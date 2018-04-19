#include "main.h"


s_counter_info g_counter;

U16 process_rdy = 0;
vu16 AD_Value_0[SAMPLE_NUM][CHANEL_NUM]; //用来存放ADC转换结果，也是DMA的目标地址
vu16 AD_Value_1[SAMPLE_NUM][CHANEL_NUM]; //用来存放ADC转换结果，也是DMA的目标地址
u16 After_filter[CHANEL_NUM]; //用来存放求平均值之后的结果


//vu16 Detect_Buf[DETECTG_BUF_GROUP][DETECTG_BUF_SIZE];
vu16 Detect_Buf[DETECTG_BUF_SIZE];
s_buf AD_buff;




s_counter_env counter_env;

void counter_init (void)
{
	int i;
	S8 *p = (S8 *) &g_counter;
	for (i = 0; i < sizeof(s_counter_info); i++)
	{
		*(p++) = 0;
	}	
	
	memset ((void *)Detect_Buf, 0, sizeof(Detect_Buf));
	memset ((void *)After_filter, 0, sizeof(After_filter));
	memset ((void *)AD_Value_0, 0, sizeof(AD_Value_0));
	memset ((void *)AD_Value_1, 0, sizeof(AD_Value_1));
	
	COUNT_COMPLETE = 1;
	
	g_counter.AD_buf_p = AD_Value_0;
	g_counter.AD_use_buf_index = 0;
	g_counter.counter_state = COUNTER_IDLE;
	
	for (i = 0; i < CHANEL_NUM; i++){
		g_counter.ch[i].ad_min = 0xFFFF;
		g_counter.ch[i].ad_max = 0;
		g_counter.ch[i].ad_averaged_value = 0;
	}
	
	g_counter.sim_ad_value = 35000;
	
	g_counter.max_len.data_hl = 0;
	g_counter.max_close_interval.data_hl = 0;
	g_counter.max_area_sum.data_hl = 0;
	g_counter.min_interval.data_hl = 0xFFFFFFFF;
	g_counter.min_len.data_hl = 0xFFFFFFFF;
	g_counter.min_close_interval.data_hl = 0xFFFFFFFF;
	g_counter.min_area_sum.data_hl = 0xFFFFFFFF;
}


void counter_reset (void)
{
#if OS_CRITICAL_METHOD == 3u                           /* Allocate storage for CPU status register     */
    OS_CPU_SR  cpu_sr = 0u;
#endif
	OS_ENTER_CRITICAL();
	g_counter.total_count = 0;
	g_counter.pre_count = 0;
	g_counter.total_reject = 0;
	g_counter.total_good = 0;
	g_counter.rej_flag = 0;
	g_counter.rej_flag_buf.data_hl = 0;
	CHANEL_INIT(0);
	CHANEL_INIT(1);
	CHANEL_INIT(2);
	CHANEL_INIT(3);
	CHANEL_INIT(4);
	CHANEL_INIT(5);
	CHANEL_INIT(6);
	CHANEL_INIT(7);
	CHANEL_INIT(8);
	CHANEL_INIT(9);
	CHANEL_INIT(10);
	CHANEL_INIT(11);
	g_counter.max_len.data_hl = 0;
	g_counter.max_close_interval.data_hl = 0;
	g_counter.max_area_sum.data_hl = 0;
	g_counter.min_interval.data_hl = 0xFFFFFFFF;
	g_counter.min_len.data_hl = 0xFFFFFFFF;
	g_counter.min_close_interval.data_hl = 0xFFFFFFFF;
	g_counter.min_area_sum.data_hl = 0xFFFFFFFF;
	stop_vibrate ();
	REJECT_FLAG = 1;//剔除标志
	PRE_COUNT_FLAG = 1;
	g_counter.counter_step = 0;
	g_counter.counter_state = COUNTER_IDLE;
	COUNT_COMPLETE = 0;
	OS_EXIT_CRITICAL();
	g_counter.complete_count = 0;//数粒完成信号
	g_counter.complete_res = 0;//数粒完成信号
}
void counter_data_clear (void)
{
#if OS_CRITICAL_METHOD == 3u                           /* Allocate storage for CPU status register     */
    OS_CPU_SR  cpu_sr = 0u;
#endif
	OS_ENTER_CRITICAL();
	CHANEL_DATA_CLEAR(0);
	CHANEL_DATA_CLEAR(1);
	CHANEL_DATA_CLEAR(2);
	CHANEL_DATA_CLEAR(3);
	CHANEL_DATA_CLEAR(4);
	CHANEL_DATA_CLEAR(5);
	CHANEL_DATA_CLEAR(6);
	CHANEL_DATA_CLEAR(7);
	CHANEL_DATA_CLEAR(8);
	CHANEL_DATA_CLEAR(9);
	CHANEL_DATA_CLEAR(10);
	CHANEL_DATA_CLEAR(11);
	g_counter.max_len.data_hl = 0;
	g_counter.max_close_interval.data_hl = 0;
	g_counter.max_area_sum.data_hl = 0;
	g_counter.min_interval.data_hl = 0xFFFFFFFF;
	g_counter.min_len.data_hl = 0xFFFFFFFF;
	g_counter.min_close_interval.data_hl = 0xFFFFFFFF;
	g_counter.min_area_sum.data_hl = 0xFFFFFFFF;
	
	OS_EXIT_CRITICAL();
}


void AD_GPIO_Configuration(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	/*开启GPIOB和GPIOF的外设时钟*/
	RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOE, ENABLE); 
	//PA0/1/2/3 作为模拟通道输入引脚
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0| GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN; //模拟输入引脚
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	//PB0/1 作为模拟通道输入引脚
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN; //模拟输入引脚
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	//PC0/1/2/3/4/5 作为模拟通道输入引脚
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN; //模拟输入引脚
	GPIO_Init(GPIOC, &GPIO_InitStructure);
	
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6;				 //
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP; 		 //推挽输出
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;		 //IO口速度为50MHz
	GPIO_Init(GPIOE, &GPIO_InitStructure);					 //根据设定参数初始化GPIOG.15
	PEout(3) = 1;
	PEout(4) = 1;
	PEout(5) = 1;
	PEout(6) = 1;
}


void ADC1_Configuration(void)
{
	#define SAMPLE_TIME ADC_SampleTime_7Cycles5//ADC_SampleTime_28Cycles5// ADC_SampleTime_7Cycles5 
	ADC_InitTypeDef ADC_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;
	
	

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE ); //使能ADC1通道时钟，各个管脚时钟

	RCC_ADCCLKConfig(RCC_PCLK2_Div6); //72M/6=12,ADC最大时间不能超过14M

	ADC_DeInit(ADC1); //将外设 ADC1 的全部寄存器重设为缺省值

	ADC_InitStructure.ADC_Mode = ADC_Mode_Independent; //ADC工作模式:ADC1和ADC2工作在独立模式
	ADC_InitStructure.ADC_ScanConvMode =ENABLE; //模数转换工作在扫描模式
	ADC_InitStructure.ADC_ContinuousConvMode = DISABLE; //模数转换工作在连续转换模式
	ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None; //外部触发转换关闭
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right; //ADC数据右对齐
	ADC_InitStructure.ADC_NbrOfChannel = CHANEL_NUM; //顺序进行规则转换的ADC通道的数目
	ADC_Init(ADC1, &ADC_InitStructure); //根据ADC_InitStruct中指定的参数初始化外设ADCx的寄存器


	//设置指定ADC的规则组通道，设置它们的转化顺序和采样时间
	//ADC1,ADC通道x,规则采样顺序值为y,采样时间为239.5周期
#if 1
	ADC_RegularChannelConfig(ADC1, CH0, 1, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH1, 2, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH2, 3, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH3, 4, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH4, 5, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH5, 6, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH6, 7, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH7, 8, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH8, 9, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH9, 10, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH10, 11, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH11, 12, SAMPLE_TIME );
#else
	ADC_RegularChannelConfig(ADC1, CH0, 1, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 2, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 3, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 4, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 5, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 6, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 7, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 8, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 9, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 10, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 11, SAMPLE_TIME );
	ADC_RegularChannelConfig(ADC1, CH0, 12, SAMPLE_TIME );
#endif

	// 开启ADC的DMA支持（要实现DMA功能，还需独立配置DMA通道等参数）
	ADC_DMACmd(ADC1, ENABLE);
	
	//开启模拟看门狗
	ADC_AnalogWatchdogThresholdsConfig(ADC1,0xfff,0);
	ADC_AnalogWatchdogCmd(ADC1,ADC_AnalogWatchdog_AllRegEnable);
	ADC_ITConfig(ADC1, ADC_IT_AWD, ENABLE);//允许模拟看门狗中断

	//使能ADC中断
	ADC_ITConfig(ADC1, ADC_IT_EOC, ENABLE);
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = ADC1_2_INT_PREEM;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = ADC1_2_INT_SUB;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

	NVIC_InitStructure.NVIC_IRQChannel = ADC1_2_IRQn;
	NVIC_Init(&NVIC_InitStructure);  
	
	ADC_Cmd(ADC1, ENABLE); //使能指定的ADC1

	ADC_ResetCalibration(ADC1); //复位指定的ADC1的校准寄存器

	while(ADC_GetResetCalibrationStatus(ADC1)); //获取ADC1复位校准寄存器的状态,设置状态则等待


	ADC_StartCalibration(ADC1); //开始指定ADC1的校准状态

	while(ADC_GetCalibrationStatus(ADC1)); //获取指定ADC1的校准程序,设置状态则等待
}


U16 detect_chanel_index = 0xFFFF;//检测通道索引
U16 chanel_pos_index = 0;	//通道光敏二极管位置索引	
U16 ADC_sync_signal = 0; //ADC转换处理同步信号
U16 ADC1_irq_cycle = 23;
U16 ADC1_process_time = 6;
//ADC中断服务函数
void ADC1_2_IRQHandler(void)
{   
	//U16 temp;
//	unsigned long long tick_old;
//	tick_old = get_tim5_ticks();
//	refresh_adc1_cycle ();
///////////////////////////////////////////////////////////////////////////////
	if (ADC_GetITStatus(ADC1, ADC_IT_AWD) != RESET){//电眼故障时进这里
		detect_chanel_index = CHANEL_NUM - (DMA_GetCurrDataCounter (DMA1_Channel1) % CHANEL_NUM);
		ADC_ClearFlag(ADC1, ADC_FLAG_AWD);
		ADC_ClearITPendingBit(ADC1, ADC_IT_AWD); 
	}else{
		chanel_pos_index++; //采样处理下一个光敏二极管
		chanel_pos_index %= CHANEL_SENSOR_NUM;
		WRITE_SENSOR_ADDR(chanel_pos_index);//采样处理下一个光敏二极管
		
		ADC_sync_signal++;
		if ( ADC_sync_signal < SAMPLE_NUM){
			ADC_SoftwareStartConvCmd(ADC1, ENABLE);
		}else{
			ADC_sync_signal = 0;
		}
		ADC_ClearITPendingBit(ADC1, ADC_IT_EOC);      //清除ADCx的中断待处理位
	}
////////////////////////////////////////////////////////////////////
//	ADC1_process_time = get_tim5_ticks () - tick_old + 2;  	
}


void AD1_DMA_Configuration(void)
{

	DMA_InitTypeDef DMA_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;
	
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE); //使能DMA传输
	DMA_DeInit(DMA1_Channel1); //将DMA的通道1寄存器重设为缺省值
	DMA_InitStructure.DMA_PeripheralBaseAddr = (u32)&ADC1->DR; //DMA外设ADC基地址
	DMA_InitStructure.DMA_MemoryBaseAddr = (u32)&AD_Value_0; //DMA内存基地址
	DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC; //内存作为数据传输的目的地
	DMA_InitStructure.DMA_BufferSize = SAMPLE_NUM * CHANEL_NUM; //DMA通道的DMA缓存的大小
	DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable; //外设地址寄存器不变
	DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable; //内存地址寄存器递增
	DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord; //数据宽度为16位
	DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord; //数据宽度为16位
	DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;// DMA_Mode_Normal; //工作在循环缓存模式
	DMA_InitStructure.DMA_Priority = DMA_Priority_High; //DMA通道 x拥有高优先级
	DMA_InitStructure.DMA_M2M = DMA_M2M_Disable; //DMA通道x没有设置为内存到内存传输
	DMA_Init(DMA1_Channel1, &DMA_InitStructure); //根据DMA_InitStruct中指定的参数初始化DMA的通道
	
	DMA_ITConfig(DMA1_Channel1, DMA_IT_TC,ENABLE); //传输结束中断
     
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = DMA1_1_INT_PREEM;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = DMA1_1_INT_SUB;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

	NVIC_InitStructure.NVIC_IRQChannel = DMA1_Channel1_IRQn;
	NVIC_Init(&NVIC_InitStructure);   

}
int counter_process_state;
void counter_process (void);
//============================================
//函数名称:DMA1_Channel1_IRQHandler
//功能描述:DMA中断 对AD采集值平均滤波
//输入:无
//输出:无
//============================================
#define START_DATA 5
#if (SAMPLE_NUM == 8)
	#define GET_STD_AD_V(AD,BUF,C,S)  {\
		AD[C] = BUF[0][C] + BUF[1][C] + BUF[2][C] + BUF[3][C] + \
				BUF[4][C] + BUF[5][C] + BUF[6][C] + BUF[7][C]; \
		/*AD[C] /= S; */ \
		if (g_counter.ch[C].ad_fitter_index >= AD_FITTER_BUFF_SIZE){ \
			g_counter.ch[C].ad_fitter_index = 0; \
		} \
		g_counter.ch[C].ad_fitter_buff[g_counter.ch[C].ad_fitter_index] = AD[C]; \
		g_counter.ch[C].ad_fitter_index++; \
		if (process_rdy > START_DATA){ \
			if (AD[C] > g_counter.ch[C].ad_max){ \
				g_counter.ch[C].ad_max = AD[C]; \
			} \
			if (AD[C] < g_counter.ch[C].ad_min){ \
				g_counter.ch[C].ad_min = AD[C]; \
			} \
			if (process_rdy != process_rdy_old) { \
				g_counter.ch[C].std_v += AD[C] / (PROCESS_RDY - 1 - (START_DATA + 1)); \
			}\
		} \
		if ((process_rdy + 1) == PROCESS_RDY){ \
			for (g_counter.ch[C].ad_fitter_index = 0; \
					g_counter.ch[C].ad_fitter_index < AD_FITTER_BUFF_SIZE; \
					g_counter.ch[C].ad_fitter_index++){ \
				g_counter.ch[C].ad_averaged_value += g_counter.ch[C].ad_fitter_buff[g_counter.ch[C].ad_fitter_index]; \
			} \
			g_counter.ch[C].ad_fitter_index = 0; \
			g_counter.ch[C].std_v = g_counter.ch[C].ad_averaged_value / AD_FITTER_BUFF_SIZE; \
			g_counter.ch[C].std_down_offset = (g_counter.ch[C].ad_max - g_counter.ch[C].ad_min); \
			g_counter.ch[C].std_up_offset = (g_counter.ch[C].ad_max - g_counter.ch[C].ad_min - 1); \
			g_counter.ch[C].std_down_offset *= g_counter.set_std_down_v_offset; \
			g_counter.ch[C].std_up_offset *= g_counter.set_std_down_v_offset; \
			g_counter.ch[C].std_down_offset /= (g_counter.set_std_up_v_offset); \
			g_counter.ch[C].std_up_offset /= (g_counter.set_std_up_v_offset); \
		} \
	}
#endif
	
#if (SAMPLE_NUM == 8) 
	#define AD_FILTER(AD,BUF,C,S) {\
		AD[C] = BUF[0][C] + BUF[1][C] + BUF[2][C] + BUF[3][C] + \
				BUF[4][C] + BUF[5][C] + BUF[6][C] + BUF[7][C]; \
		 /*AD[C] /= S; */\
		if (g_counter.ch[C].ad_fitter_index >= AD_FITTER_BUFF_SIZE){ \
			g_counter.ch[C].ad_fitter_index = 0; \
		} \
		g_counter.ch[C].ad_averaged_value -= g_counter.ch[C].ad_fitter_buff[g_counter.ch[C].ad_fitter_index]; \
		g_counter.ch[C].ad_fitter_buff[g_counter.ch[C].ad_fitter_index] = AD[C]; \
		g_counter.ch[C].ad_averaged_value += AD[C]; \
		AD[C] = g_counter.ch[C].ad_averaged_value / AD_FITTER_BUFF_SIZE; \
		g_counter.ch[C].ad_fitter_index++; \
		if (AD[C] > g_counter.ch[C].ad_max){ \
			g_counter.ch[C].ad_max = AD[C]; \
		} \
		if (AD[C] < g_counter.ch[C].ad_min){ \
			g_counter.ch[C].ad_min = AD[C]; \
		} \
	}
#endif

	
void pause_vibrate (void)
{
	VIBRATE_SWITCH = 1;
}
	
void start_vibrate (void)
{
#if OS_CRITICAL_METHOD == 3u                           /* Allocate storage for CPU status register     */
    OS_CPU_SR  cpu_sr = 0u;
#endif
	OS_ENTER_CRITICAL();
	OPEN_DOOR(0);
	OPEN_DOOR(1);
	OPEN_DOOR(2);
	OPEN_DOOR(3);
	OPEN_DOOR(4);
	OPEN_DOOR(5);
	OPEN_DOOR(6);
	OPEN_DOOR(7);
	OPEN_DOOR(8);
	OPEN_DOOR(9);
	OPEN_DOOR(10);
	OPEN_DOOR(11);
	if (g_counter.pre_count < g_counter.set_count){
		g_counter.total_count = g_counter.pre_count;
		g_counter.pre_count = 0;
		PRE_COUNT_FLAG = 1;
		g_counter.counter_state = NORMAL_COUNT;
	}else{//多数或者刚好数够
		g_counter.total_count = g_counter.pre_count;
		g_counter.pre_count = 0;
		COUNTER_FINISH_OP ();
		g_counter.counter_state = PRE_COUNT;
	}
	VIBRATE_SWITCH = 0;
	OS_EXIT_CRITICAL();
}	
void stop_vibrate (void)
{
	VIBRATE_SWITCH = 1;
}


int AD_Sample_init (void)
{
	AD_GPIO_Configuration ();
	AD1_DMA_Configuration ();
	ADC1_Configuration ();
	ENABLE_SENSOR ();
	DMA_Cmd(DMA1_Channel1, ENABLE); //启动DMA通道
	ADC_SoftwareStartConvCmd(ADC1, ENABLE);
	return 0;
}

void AD_Start_Sample (u32 _memBaseAddr)
{
	/* Write to DMA1 Channel4 CMAR */
	DMA1_Channel1->CMAR = _memBaseAddr;
	//ADC_sync_signal = 0;//AD 信号清零 采样同步
	ADC_SoftwareStartConvCmd(ADC1, ENABLE);
}



int save_detect_data (U16 _ch, U16 * _index, U16 _ad_value)
{	
//	if (_ad_value == 0)
//	{
//		_ad_value = _ad_value;
//	}
	if (my_env.dma_state == 1){
		return 0;
	}
	if (_ch == g_counter.set_watch_ch){
		if ((*_index) < DETECTG_BUF_SIZE){
			Detect_Buf[*_index] = _ad_value;
			(*_index)++;
			return 0;
		}else{
			return 1;
		}
	}
	return 0;
}

#define CASE_CH(CH) case CH: if (DOOR_##CH == 1){ \
	if (g_counter.set_door_n_close_delay[CH] == 0){ \
		DOOR_##CH = 0; \
	}else if ((_ch->door_close_delay == 0) && (DOOR_##CH == 1)){/*如果door_close_delay等于0，说明此刻没有在计时*/ \
		_ch->door_close_delay = g_counter.set_door_n_close_delay[CH];/*小料门关闭延时*/ \
	} \
	_ch->close_interval.data_hl = _ch->interval.data_hl; \
	if (_ch->close_interval.data_hl < g_counter.set_min_interval.data_hl){/*小料门关闭时药粒间隔太小*/  \
		REJECT_FLAG = 0; \
		g_counter.rej_flag_buf.data.h |= REJ_TOO_CLOSE; \
		g_counter.rej_flag_buf.data.l |= REJ_TOO_CLOSE; \
		g_counter.rej_flag = g_counter.rej_flag_buf.data.l; /*更新剔除原因*/ \
	} \
	if (_ch->close_interval.data_hl > _ch->max_close_interval.data_hl){ \
		_ch->max_close_interval.data_hl = _ch->close_interval.data_hl; \
		if (_ch->max_close_interval.data_hl > g_counter.max_close_interval.data_hl){ \
			g_counter.max_close_interval.data_hl = _ch->max_close_interval.data_hl; \
		} \
	} \
	if (_ch->close_interval.data_hl < _ch->min_close_interval.data_hl){ \
		_ch->min_close_interval.data_hl = _ch->close_interval.data_hl; \
		if (_ch->min_close_interval.data_hl < g_counter.min_close_interval.data_hl){ \
			g_counter.min_close_interval.data_hl = _ch->min_close_interval.data_hl; \
		} \
	} \
} \
break


int count_piece(s_chanel_info * _ch, U16 _ad_value_, U16 _ch_id)
{
	int r_code = 0;
	int ad_change_v = 0;
	
	ad_change_v =  _ch->std_down_v - _ad_value_;
	if (ad_change_v < 0){
		ad_change_v = 0;
	}
	switch(_ch->process_step){ 
		case 0: {
			
			_ch->wave_down_flag = 0;
			_ch->wave_up_flag = 0;
			_ch->ad_value_min = AD_MAX_V;
			_ch->ad_value_min_temp = AD_MAX_V;
			
			_ch->cur_count = 0;
			_ch->counter_state = NORMAL_COUNT;
			_ch->sample_index = 0;
			
			_ch->process_step = 6;
			_ch->state = CH_IDLE;
			_ch->interval_ticks = get_sys_run_time ();
			_ch->max_interval.data_hl = 0;
			_ch->max_len.data_hl = 0;
			_ch->max_close_interval.data_hl = 0;
			_ch->max_area_sum.data_hl = 0;
			_ch->min_interval.data_hl = 0xFFFFFFFF;
			_ch->min_len.data_hl = 0xFFFFFFFF;
			_ch->min_close_interval.data_hl = 0xFFFFFFFF;
			_ch->min_area_sum.data_hl = 0xFFFFFFFF;
			_ch->area_sum.data_hl = 0;
			
			break;
		}
		case 6:{ 
			if (_ad_value_ < _ch->std_down_v){
				r_code = save_detect_data (_ch_id, &_ch->sample_index, _ad_value_);
				_ch->state = CH_BUSY;
				_ch->wave_down_flag++;
				_ch->area_sum_buf.data_hl += ad_change_v;
				
				if (_ad_value_ < _ch->ad_value_min_temp){
					_ch->ad_value_min_temp = _ad_value_;
				}
			}else{
				_ch->wave_down_flag = 0;
				_ch->sample_index = 0;
				_ch->state = CH_IDLE;
				_ch->ad_value_min_temp = 0xFFFF;
				_ch->area_sum_buf.data_hl = 0;
			}
			
			if (_ch->wave_down_flag > WAVE_DOWN){//检测到有药粒
				_ch->wave_down_flag = 0;
				_ch->ad_value_min_temp = _ad_value_;
				_ch->size_ticks = get_sys_run_time ();
				_ch->interval.data_hl = _ch->size_ticks - _ch->interval_ticks;
				if (_ch->interval.data_hl > _ch->max_interval.data_hl ){
					if ( _ch->max_interval.data_hl > 0){
						_ch->max_interval.data_hl = _ch->interval.data_hl;
					}else{
						_ch->max_interval.data_hl = 1;//通道第一粒出现
					}
				}
				if (_ch->interval.data_hl < _ch->min_interval.data_hl){
					_ch->min_interval.data_hl = _ch->interval.data_hl;
					if (_ch->min_interval.data_hl < g_counter.min_interval.data_hl){
						g_counter.min_interval.data_hl = _ch->min_interval.data_hl;
					}
				}
				_ch->process_step = 16;
				///////////////////////////////////////////////////////////////////////////////////////////
				//计数
				///////////////////////////////////////////////////////////////////////////////////////////
				_ch->cur_count++;
				if (_ch->counter_state == NORMAL_COUNT){//通道正常数粒状态
					if ((g_counter.total_count + 1) <= g_counter.set_count){//判断当前这粒是属于哪一瓶
						g_counter.total_count++;
						if (g_counter.total_count == g_counter.set_count){
							g_counter.counter_state = PRE_COUNT;//数粒机进入预数粒状态
							if (g_counter.pre_count >= g_counter.set_pre_count){
								pause_vibrate();
							}
							g_counter.ch[0].cur_count = 0;
							g_counter.ch[1].cur_count = 0;
							g_counter.ch[2].cur_count = 0;
							g_counter.ch[3].cur_count = 0;
							g_counter.ch[4].cur_count = 0;
							g_counter.ch[5].cur_count = 0;
							g_counter.ch[6].cur_count = 0;
							g_counter.ch[7].cur_count = 0;
							g_counter.ch[8].cur_count = 0;
							g_counter.ch[9].cur_count = 0;
							g_counter.ch[10].cur_count = 0;
							g_counter.ch[11].cur_count = 0;
						}
					}else{//已经达到设定的计数量，开始预数
						_ch->counter_state = PRE_COUNT;
					}
				}
				if (_ch->counter_state == PRE_COUNT){//通道预数粒状态
					switch (_ch_id){
						CASE_CH(0);
						CASE_CH(1);
						CASE_CH(2);
						CASE_CH(3);
						CASE_CH(4);
						CASE_CH(5);
						CASE_CH(6);
						CASE_CH(7);
						CASE_CH(8);
						CASE_CH(9);
						CASE_CH(10);
						CASE_CH(11);
						default:break;
					}
					PRE_COUNT_FLAG = 0;
					g_counter.pre_count++;
					if (g_counter.pre_count >= g_counter.set_pre_count){//达到设定的预数
						pause_vibrate();
					}
					if (g_counter.pre_count > g_counter.set_count){//预数超过设定数
						g_counter.rej_flag_buf.data.h |= REJ_TOO_MORE;
					}
				}
				///////////////////////////////////////////////////////////////////////////////////////////
			}
			break;
		} 
		case 16:{	
			
			r_code = save_detect_data (_ch_id, &_ch->sample_index, _ad_value_);
			
			_ch->area_sum_buf.data_hl += ad_change_v;
			
			if (_ad_value_ < _ch->ad_value_min_temp){
				_ch->ad_value_min_temp = _ad_value_;
				_ch->wave_up_flag = 0;
			}else if (_ad_value_ > _ch->ad_value_min_temp + WAVE_UP_V){
				_ch->wave_up_flag++;
			}
			
			if (_ch->wave_up_flag > WAVE_UP){//经过了波谷后
				_ch->ad_value_min = _ch->ad_value_min_temp;
				_ch->ad_value_min_temp = AD_MAX_V;
				_ch->wave_up_flag = 0;
				_ch->process_step = 31;
			}
			
			break;
		}
		case 31:{/*判断是否跟参考值相同或相近,确定最大采样值,波形恢复到参考值*/
			
			r_code = save_detect_data (_ch_id, &_ch->sample_index, _ad_value_);
			
			if (_ad_value_ >= _ch->std_up_v){
				_ch->wave_up_flag++;
			}else{
				_ch->wave_up_flag = 0;
			}
			
			if (_ch->wave_up_flag > WAVE_UP){
				_ch->interval_ticks = get_sys_run_time ();
				_ch->len.data_hl = _ch->interval_ticks - _ch->size_ticks;
				if (_ch->len.data_hl > _ch->max_len.data_hl){
					_ch->max_len.data_hl = _ch->len.data_hl;
					if (_ch->max_len.data_hl > g_counter.max_len.data_hl){
						g_counter.max_len.data_hl = _ch->max_len.data_hl;
					}
				}
				if (_ch->len.data_hl < _ch->min_len.data_hl){
					_ch->min_len.data_hl = _ch->len.data_hl;
					if (_ch->min_len.data_hl < g_counter.min_len.data_hl){
						g_counter.min_len.data_hl = _ch->min_len.data_hl;
					}
				}
				
				_ch->area_sum.data_hl = _ch->area_sum_buf.data_hl + ad_change_v;//最终面积
				_ch->area_sum_buf.data_hl = 0;
				if (_ch->area_sum.data_hl > _ch->max_area_sum.data_hl){
					_ch->max_area_sum.data_hl = _ch->area_sum.data_hl;
					if (_ch->max_area_sum.data_hl > g_counter.max_area_sum.data_hl){
						g_counter.max_area_sum.data_hl = _ch->max_area_sum.data_hl;
					}
				}
				if (_ch->area_sum.data_hl < _ch->min_area_sum.data_hl){
					_ch->min_area_sum.data_hl = _ch->area_sum.data_hl;
					if (_ch->min_area_sum.data_hl < g_counter.min_area_sum.data_hl){
						g_counter.min_area_sum.data_hl = _ch->min_area_sum.data_hl;
					}
				}
				
				//药粒出了检测区，更新剔除信号////////////////////////////////////////////////////////////////////////
				if (_ch->counter_state == NORMAL_COUNT){//正常数粒
					if (_ch->len.data_hl > g_counter.set_max_len.data_hl){ //超过设定长度
						g_counter.rej_flag_buf.data.l |= REJ_TOO_LONG;
					}else if (_ch->len.data_hl < g_counter.set_min_len.data_hl){//低于设定长度
						g_counter.rej_flag_buf.data.l |= REJ_TOO_SHORT;
					}
					if (_ch->area_sum.data_hl > g_counter.set_max_area_sum.data_hl){ //超过设定面积
						g_counter.rej_flag_buf.data.l |= REJ_TOO_BIG;
					}else if (_ch->area_sum.data_hl < g_counter.set_min_area_sum.data_hl){//低于设定面积
						g_counter.rej_flag_buf.data.l |= REJ_TOO_SMALL;
					}
					if (g_counter.total_count >= g_counter.set_count){//达到设定的计数量
						COUNTER_FINISH_OP ();//数粒完成,给相应的操作
					}
				}else if (_ch->counter_state == PRE_COUNT){//预数粒
					if (_ch->len.data_hl > g_counter.set_max_len.data_hl){ //超过设定长度
						g_counter.rej_flag_buf.data.h |= REJ_TOO_LONG;
					}else if (_ch->len.data_hl < g_counter.set_min_len.data_hl){//低于设定长度
						g_counter.rej_flag_buf.data.h |= REJ_TOO_SHORT;
					}
					if (_ch->area_sum.data_hl > g_counter.set_max_area_sum.data_hl){ //超过设定面积
						g_counter.rej_flag_buf.data.h |= REJ_TOO_BIG;
					}else if (_ch->area_sum.data_hl < g_counter.set_min_area_sum.data_hl){//低于设定面积
						g_counter.rej_flag_buf.data.h |= REJ_TOO_SMALL;
					}
				}
				_ch->process_step = 6;
				_ch->sample_size = _ch->sample_index;
				_ch->state = CH_DATA_RDY;
				_ch->sample_index = 0;
				_ch->wave_up_flag = 0;
			}
			
			break;
		}
	}
	return r_code;
}


////////////////////////////////////////////////////////////////////////////////

//void counter_process (void)
//{
//}

u16 counter_process_time = 0;
u16 dma_irq_cycle = 0;
void DMA1_Channel1_IRQHandler(void)
{     
	static int process_rdy_old = 0;
	uint16_t tick_old;
	int r_code = 0, i;
	tick_old = get_tim5_ticks();
	refresh_dma1_cycle (); //先统计DMA中断周期
/////////////////////////////////////////////////////////////////////////////////
//	u8 count;
//	if(DMA_GetITStatus(DMA1_IT_HT1)){
//		DMA_ClearITPendingBit(DMA1_IT_GL1); //清除全部中断标志
//		i = DMA1_Channel1->CNDTR;
//	}else 
	if(DMA_GetITStatus(DMA1_IT_TC1)){
		DMA_ClearITPendingBit(DMA1_IT_GL1); //清除全部中断标志
		if (g_counter.AD_use_buf_index == 0){
			AD_Start_Sample ((u32) AD_Value_1);//滤波完就开启转换
			g_counter.AD_use_buf_index = 1;
			g_counter.AD_buf_p = AD_Value_0;
		}else {
			AD_Start_Sample ((u32) AD_Value_0);//滤波完就开启转换
			g_counter.AD_use_buf_index = 0;
			g_counter.AD_buf_p = AD_Value_1;
		}
		if (process_rdy < PROCESS_RDY){	
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 0, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 1, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 2, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 3, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 4, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 5, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 6, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 7, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 8, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 9, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 10, SAMPLE_NUM);
			GET_STD_AD_V (After_filter, g_counter.AD_buf_p, 11, SAMPLE_NUM);
			if ((process_rdy + 1) == PROCESS_RDY){
				for (i = 0; i < CHANEL_NUM; i++){
					if (g_counter.ch[i].std_v > STD_UP_V_OFFSET) { 
						g_counter.ch[i].std_up_v = g_counter.ch[i].std_v - STD_UP_V_OFFSET; 
					}else{ 
						g_counter.ch[i].std_up_v = g_counter.ch[i].std_v;
					} 
					if (g_counter.ch[i].std_v > STD_DOWN_V_OFFSET) { 
						g_counter.ch[i].std_down_v = g_counter.ch[i].std_v - STD_DOWN_V_OFFSET; 
					}else{ 
						g_counter.ch[i].std_down_v = g_counter.ch[i].std_v;
					} 
				}
				process_rdy = PROCESS_RDY;
				COUNTER_FINISH_OP ();
			}else{
				process_rdy_old = process_rdy;
			}
		}else{
		//////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////// process begin ///////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////

			AD_FILTER (After_filter, g_counter.AD_buf_p, 0, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 1, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 2, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 3, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 4, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 5, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 6, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 7, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 8, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 9, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 10, SAMPLE_NUM);
			AD_FILTER (After_filter, g_counter.AD_buf_p, 11, SAMPLE_NUM);
			
			//After_filter[0] = g_counter.sim_ad_value;
			r_code += count_piece (&g_counter.ch[0], After_filter[0], 0);
			r_code += count_piece (&g_counter.ch[1], After_filter[1], 1);
			r_code += count_piece (&g_counter.ch[2], After_filter[2], 2);
			r_code += count_piece (&g_counter.ch[3], After_filter[3], 3);
			r_code += count_piece (&g_counter.ch[4], After_filter[4], 4);
			r_code += count_piece (&g_counter.ch[5], After_filter[5], 5);
			r_code += count_piece (&g_counter.ch[6], After_filter[6], 6);
			r_code += count_piece (&g_counter.ch[7], After_filter[7], 7);
			r_code += count_piece (&g_counter.ch[8], After_filter[8], 8);
			r_code += count_piece (&g_counter.ch[9], After_filter[9], 9);
			r_code += count_piece (&g_counter.ch[10], After_filter[10], 10);
			r_code += count_piece (&g_counter.ch[11], After_filter[11], 11);
			
			if (my_env.print == 1){
				if (r_code != 0){
				}else if (g_counter.ch[g_counter.set_watch_ch].state == CH_DATA_RDY){
					if (my_env.dma_state == 0){
						my_env.dma_state = 1;
						g_counter.buf_addr = (u32)&Detect_Buf[0];
						OSQPost(debug_msg, (void *) 0x55);//发送消息
					}
				}
			}else if ((AD_buff.buffer_en == 1)){
				AD_buff.buffer[AD_buff.buffer_index] = After_filter[g_counter.set_watch_ch];
				AD_buff.buffer_index++;
				if (AD_buff.buffer_index >= AD_BUFF_SIZE){
					AD_buff.buffer_index = 0;
					AD_buff.buffer_en = 0;
					OSQPost(debug_msg, (void *) 0x55);//发送消息
				}
			}
			
		//	counter_process_state = r_code;
		//////////////////////////////// process end /////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////
		}
	} 
//////////////////////////////////////////////////////////////////////
	counter_process_time = get_tim5_ticks () - tick_old + 2;  	
}


