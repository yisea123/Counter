#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\src\\misc.c"




















 

 
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\misc.h"




















 

 







 
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"







































 



 



 
    






  


 
  


 

#line 75 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"


















 










 
#line 1 ".\\RTE\\_Target_1\\RTE_Components.h"







 







 


#line 32 ".\\RTE\\_Target_1\\RTE_Components.h"

#line 107 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"












            
#line 127 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"





 






 
#line 148 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 



 



 
#line 167 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"




 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      

#line 226 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 247 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 275 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 301 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"


  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_IRQn               = 24,      
  TIM1_UP_IRQn                = 25,      
  TIM1_TRG_COM_IRQn           = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTCAlarm_IRQn               = 41,      
  USBWakeUp_IRQn              = 42,      
  TIM8_BRK_IRQn               = 43,      
  TIM8_UP_IRQn                = 44,      
  TIM8_TRG_COM_IRQn           = 45,      
  TIM8_CC_IRQn                = 46,      
  ADC3_IRQn                   = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_IRQn                   = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Channel1_IRQn          = 56,      
  DMA2_Channel2_IRQn          = 57,      
  DMA2_Channel3_IRQn          = 58,      
  DMA2_Channel4_5_IRQn        = 59       


#line 386 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 431 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 477 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"
} IRQn_Type;



 

#line 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"
 




 
















 










#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 35 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"

















 




 



 

 









 







#line 112 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"

#line 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_compiler.h"
 




 
















 




#line 29 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_compiler.h"



 
#line 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"
 




 
















 









 













   
   


 
#line 82 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"


 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}









 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1U);
}





#line 356 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"



 


 



 




 






 







 






 








 










 










 











 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 516 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"







 











 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 





   


 



 

#line 794 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"
 


#line 35 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_compiler.h"




 
#line 220 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_compiler.h"




#line 114 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"

















 
#line 153 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"

 






 
#line 169 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"

 




 












 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:27;               
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 


















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:1;                
    uint32_t ICI_IT_1:6;                  
    uint32_t _reserved1:8;                
    uint32_t T:1;                         
    uint32_t ICI_IT_2:2;                  
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 






























 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t _reserved1:30;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 
#line 455 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"

 





















 









 


















 










































 









 















 


















 


















 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    



        uint32_t RESERVED1[1U];

} SCnSCB_Type;

 



 










 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[29U];
  volatile  uint32_t IWR;                     
  volatile const  uint32_t IRR;                     
  volatile uint32_t IMCR;                    
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 



 



 



 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   


#line 1232 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"







 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
#line 1381 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"

#line 1390 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"






 










 


 



 





 

#line 1441 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"

#line 1451 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm3.h"













 
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)                      );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







 
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
    do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
    do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);
  }
}









 
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
  }
}







 
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}










 
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               >> (8U - 4)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}










 
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;
}









 
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}





 
static __inline void __NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 


 





 








 
static __inline uint32_t SCB_GetFPUType(void)
{
    return 0U;            
}


 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                               










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










#line 484 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\system_stm32f10x.h"



















 



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 485 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"
#line 486 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



   

 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

 





 



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint16_t DR1;
  uint16_t  RESERVED1;
  volatile uint16_t DR2;
  uint16_t  RESERVED2;
  volatile uint16_t DR3;
  uint16_t  RESERVED3;
  volatile uint16_t DR4;
  uint16_t  RESERVED4;
  volatile uint16_t DR5;
  uint16_t  RESERVED5;
  volatile uint16_t DR6;
  uint16_t  RESERVED6;
  volatile uint16_t DR7;
  uint16_t  RESERVED7;
  volatile uint16_t DR8;
  uint16_t  RESERVED8;
  volatile uint16_t DR9;
  uint16_t  RESERVED9;
  volatile uint16_t DR10;
  uint16_t  RESERVED10; 
  volatile uint16_t RTCCR;
  uint16_t  RESERVED11;
  volatile uint16_t CR;
  uint16_t  RESERVED12;
  volatile uint16_t CSR;
  uint16_t  RESERVED13[5];
  volatile uint16_t DR11;
  uint16_t  RESERVED14;
  volatile uint16_t DR12;
  uint16_t  RESERVED15;
  volatile uint16_t DR13;
  uint16_t  RESERVED16;
  volatile uint16_t DR14;
  uint16_t  RESERVED17;
  volatile uint16_t DR15;
  uint16_t  RESERVED18;
  volatile uint16_t DR16;
  uint16_t  RESERVED19;
  volatile uint16_t DR17;
  uint16_t  RESERVED20;
  volatile uint16_t DR18;
  uint16_t  RESERVED21;
  volatile uint16_t DR19;
  uint16_t  RESERVED22;
  volatile uint16_t DR20;
  uint16_t  RESERVED23;
  volatile uint16_t DR21;
  uint16_t  RESERVED24;
  volatile uint16_t DR22;
  uint16_t  RESERVED25;
  volatile uint16_t DR23;
  uint16_t  RESERVED26;
  volatile uint16_t DR24;
  uint16_t  RESERVED27;
  volatile uint16_t DR25;
  uint16_t  RESERVED28;
  volatile uint16_t DR26;
  uint16_t  RESERVED29;
  volatile uint16_t DR27;
  uint16_t  RESERVED30;
  volatile uint16_t DR28;
  uint16_t  RESERVED31;
  volatile uint16_t DR29;
  uint16_t  RESERVED32;
  volatile uint16_t DR30;
  uint16_t  RESERVED33; 
  volatile uint16_t DR31;
  uint16_t  RESERVED34;
  volatile uint16_t DR32;
  uint16_t  RESERVED35;
  volatile uint16_t DR33;
  uint16_t  RESERVED36;
  volatile uint16_t DR34;
  uint16_t  RESERVED37;
  volatile uint16_t DR35;
  uint16_t  RESERVED38;
  volatile uint16_t DR36;
  uint16_t  RESERVED39;
  volatile uint16_t DR37;
  uint16_t  RESERVED40;
  volatile uint16_t DR38;
  uint16_t  RESERVED41;
  volatile uint16_t DR39;
  uint16_t  RESERVED42;
  volatile uint16_t DR40;
  uint16_t  RESERVED43;
  volatile uint16_t DR41;
  uint16_t  RESERVED44;
  volatile uint16_t DR42;
  uint16_t  RESERVED45;    
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];

  CAN_FilterRegister_TypeDef sFilterRegister[14];



} CAN_TypeDef;



 
typedef struct
{
  volatile uint32_t CFGR;
  volatile uint32_t OAR;
  volatile uint32_t PRES;
  volatile uint32_t ESR;
  volatile uint32_t CSR;
  volatile uint32_t TXD;
  volatile uint32_t RXD;  
} CEC_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;
  volatile uint8_t  IDR;
  uint8_t   RESERVED0;
  uint16_t  RESERVED1;
  volatile uint32_t CR;
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;



} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;	
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
       uint32_t RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
       uint32_t RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
       uint32_t RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
       uint32_t RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
       uint32_t RESERVED4[5];
  volatile uint32_t MMCTGFCR;
       uint32_t RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
       uint32_t RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
       uint32_t RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
       uint32_t RESERVED8[567];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
       uint32_t RESERVED9[9];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
#line 925 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"
} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];   
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR2; 
} FSMC_Bank2_TypeDef;  



 
  
typedef struct
{
  volatile uint32_t PCR3;
  volatile uint32_t SR3;
  volatile uint32_t PMEM3;
  volatile uint32_t PATT3;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR3; 
} FSMC_Bank3_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t PCR4;
  volatile uint32_t SR4;
  volatile uint32_t PMEM4;
  volatile uint32_t PATT4;
  volatile uint32_t PIO4; 
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t OAR1;
  uint16_t  RESERVED2;
  volatile uint16_t OAR2;
  uint16_t  RESERVED3;
  volatile uint16_t DR;
  uint16_t  RESERVED4;
  volatile uint16_t SR1;
  uint16_t  RESERVED5;
  volatile uint16_t SR2;
  uint16_t  RESERVED6;
  volatile uint16_t CCR;
  uint16_t  RESERVED7;
  volatile uint16_t TRISE;
  uint16_t  RESERVED8;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;










} RCC_TypeDef;



 

typedef struct
{
  volatile uint16_t CRH;
  uint16_t  RESERVED0;
  volatile uint16_t CRL;
  uint16_t  RESERVED1;
  volatile uint16_t PRLH;
  uint16_t  RESERVED2;
  volatile uint16_t PRLL;
  uint16_t  RESERVED3;
  volatile uint16_t DIVH;
  uint16_t  RESERVED4;
  volatile uint16_t DIVL;
  uint16_t  RESERVED5;
  volatile uint16_t CNTH;
  uint16_t  RESERVED6;
  volatile uint16_t CNTL;
  uint16_t  RESERVED7;
  volatile uint16_t ALRH;
  uint16_t  RESERVED8;
  volatile uint16_t ALRL;
  uint16_t  RESERVED9;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t  RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t  RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SR;
  uint16_t  RESERVED2;
  volatile uint16_t DR;
  uint16_t  RESERVED3;
  volatile uint16_t CRCPR;
  uint16_t  RESERVED4;
  volatile uint16_t RXCRCR;
  uint16_t  RESERVED5;
  volatile uint16_t TXCRCR;
  uint16_t  RESERVED6;
  volatile uint16_t I2SCFGR;
  uint16_t  RESERVED7;
  volatile uint16_t I2SPR;
  uint16_t  RESERVED8;  
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SMCR;
  uint16_t  RESERVED2;
  volatile uint16_t DIER;
  uint16_t  RESERVED3;
  volatile uint16_t SR;
  uint16_t  RESERVED4;
  volatile uint16_t EGR;
  uint16_t  RESERVED5;
  volatile uint16_t CCMR1;
  uint16_t  RESERVED6;
  volatile uint16_t CCMR2;
  uint16_t  RESERVED7;
  volatile uint16_t CCER;
  uint16_t  RESERVED8;
  volatile uint16_t CNT;
  uint16_t  RESERVED9;
  volatile uint16_t PSC;
  uint16_t  RESERVED10;
  volatile uint16_t ARR;
  uint16_t  RESERVED11;
  volatile uint16_t RCR;
  uint16_t  RESERVED12;
  volatile uint16_t CCR1;
  uint16_t  RESERVED13;
  volatile uint16_t CCR2;
  uint16_t  RESERVED14;
  volatile uint16_t CCR3;
  uint16_t  RESERVED15;
  volatile uint16_t CCR4;
  uint16_t  RESERVED16;
  volatile uint16_t BDTR;
  uint16_t  RESERVED17;
  volatile uint16_t DCR;
  uint16_t  RESERVED18;
  volatile uint16_t DMAR;
  uint16_t  RESERVED19;
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;
  uint16_t  RESERVED0;
  volatile uint16_t DR;
  uint16_t  RESERVED1;
  volatile uint16_t BRR;
  uint16_t  RESERVED2;
  volatile uint16_t CR1;
  uint16_t  RESERVED3;
  volatile uint16_t CR2;
  uint16_t  RESERVED4;
  volatile uint16_t CR3;
  uint16_t  RESERVED5;
  volatile uint16_t GTPR;
  uint16_t  RESERVED6;
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;



 
  


 











 




#line 1317 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 1340 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



#line 1359 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"




















 
  


   

#line 1459 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 

 



 



 


 
 
 
 
 

 











 
#line 1520 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"




 





 
 
 
 
 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 





 



 






 
 
 
 
 

 
#line 1696 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 1703 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
 








 








 






#line 1739 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 











 











 













 






#line 1855 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"




#line 1875 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 





#line 1888 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 1907 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 1916 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 1924 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



















#line 1949 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"












 













#line 1981 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"





#line 1995 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2002 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2012 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"











 


















#line 2048 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2056 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



















#line 2081 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"












 













#line 2113 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"





#line 2127 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2134 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2144 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"











 








 








   
#line 2183 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2278 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2305 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"
 
 
 
 
 
 

 




































































 




































































 
#line 2467 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2485 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2503 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2520 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2538 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2557 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 

 






 
#line 2584 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"






 








 









 








 








 









 










 




#line 2659 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 










#line 2690 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 





 
#line 2705 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2714 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

   
#line 2723 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2732 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 





 
#line 2747 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2756 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

   
#line 2765 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2774 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 





 
#line 2789 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2798 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

   
#line 2807 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2816 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 





 
#line 2831 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2840 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

   
#line 2849 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2858 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2867 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2876 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 2886 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
 
 
 
 

 





 


 


 




 
 
 
 
 

 
#line 2950 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 2985 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3020 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3055 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3090 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 





 





 





 





 





 





 





 





 






 
#line 3157 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 



 









 
#line 3181 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"




 




 
#line 3197 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 





 
#line 3219 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
 





 
#line 3234 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"
 
#line 3241 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 




 






 


 


 


 
 
 
 
 

 
#line 3290 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3312 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3334 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3356 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3378 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3400 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
 
 
 
 

 
#line 3436 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3466 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3476 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"















 
#line 3500 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"















 
#line 3524 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"















 
#line 3548 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"















 
#line 3572 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"















 
#line 3596 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"















 
#line 3620 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"















 


 


 


 


 


 


 


 


 


 



 


 


 



 


 


 


 



 


 


 


 


 
 
 
 
 

 






 
#line 3721 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3730 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"















  
 
#line 3753 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"


















 








































 


















































 


 


 


 


 


 


 
#line 3888 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3895 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3902 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3909 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"







 
#line 3923 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3930 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3937 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3944 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3951 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3958 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 3966 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3973 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3980 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3987 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 3994 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 4001 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 4009 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 4016 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 4023 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 4030 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"





 


 


 


 


 



 
 
 
 
 

 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 
 





 






 


 
#line 4172 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 4182 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 


 
 
 
 
 

 
















 









#line 4230 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 

























 
#line 4273 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 4287 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 4297 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 




























 





















 




























 





















 
#line 4416 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
#line 4451 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"





#line 4462 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 4470 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 4477 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 
 
 
 
 

 




 
#line 4499 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
 
 
 
 

 


 





 


 



 
 
 
 
 

 
#line 4561 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 
#line 4573 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"







 


 
 
 
 
 

 











#line 4611 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 











#line 4634 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 











#line 4657 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 











#line 4680 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 5077 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5086 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5095 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5106 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5116 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5126 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5136 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5147 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5157 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5167 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5177 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5188 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5198 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5208 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5218 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5229 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5239 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5249 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5259 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5270 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5280 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5290 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5300 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5311 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5321 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5331 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5341 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5352 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5362 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5372 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

#line 5382 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 


 
 
 
 
 

 




 












 


 






#line 5430 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5500 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5515 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5541 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 


 
 
 
 
 

 
 























 























 























 























 























 























 























 























 
 
#line 5762 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 5774 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 






 
#line 5791 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



     


 
 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


#line 5935 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 5947 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 5959 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 5971 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 5983 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 5995 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6007 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6019 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 

 


#line 6033 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6045 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6057 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6069 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6081 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6093 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6105 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6117 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6129 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6141 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6153 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6165 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6177 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6189 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6201 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 


#line 6213 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 
 
 
 
 

 
 
#line 6233 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6244 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6262 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"











 





 





 
#line 6300 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 












 
#line 6321 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 6461 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6478 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6495 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6512 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6546 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6580 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6614 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6648 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6682 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6716 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6750 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6784 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6818 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6852 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6886 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6920 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6954 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 6988 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7022 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7056 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7090 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7124 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7158 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7192 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7226 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7260 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7294 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7328 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7362 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7396 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7430 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7464 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
 
 
 
 

 









#line 7491 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7499 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7509 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 


 


 


 





















 




 
 
 
 
 

 
#line 7570 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7579 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"







 



#line 7600 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 



 


 
#line 7625 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7635 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 




 


 
 
 
 
 

 
#line 7661 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 



 
#line 7685 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7694 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"







 
#line 7714 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
#line 7725 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 
 
 
 
 

 


#line 7754 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 









#line 7788 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 
 
 
 
 

 









 


 


 





 
#line 7828 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"

 


 









 


 

 



 



 



 



 



 



 



 



#line 8292 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 

 

  

#line 1 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"



















 

 



 
#line 28 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"

#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"




















 

 







 
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"







































 



 



 
    
#line 8332 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"



 

  

 

 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"



 



 



 



 

typedef struct
{
  uint32_t ADC_Mode;                      

 

  FunctionalState ADC_ScanConvMode;       

 

  FunctionalState ADC_ContinuousConvMode; 

 

  uint32_t ADC_ExternalTrigConv;          

 

  uint32_t ADC_DataAlign;                 
 

  uint8_t ADC_NbrOfChannel;               

 
}ADC_InitTypeDef;


 



 










 

#line 104 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"

#line 115 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"


 



 

#line 129 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"




#line 139 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"

#line 154 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"


 



 







 



 

#line 192 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"




#line 205 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"


 



 

#line 229 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"


 



 

















#line 266 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"


 



 

#line 282 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"


 



 

#line 297 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"

#line 305 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"


 



 











 



 

#line 338 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_adc.h"


 



 





 



 





 



 





 



 





  




 




 



 





 



 





 



 



 



 



 

void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetDualModeConversionValue(void);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold, uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);









 



 



 

 
#line 31 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"



 



 



 



 

typedef struct
{
  uint32_t DAC_Trigger;                      
 

  uint32_t DAC_WaveGeneration;               

 

  uint32_t DAC_LFSRUnmask_TriangleAmplitude; 

 

  uint32_t DAC_OutputBuffer;                 
 
}DAC_InitTypeDef;



 



 



 

#line 94 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"

#line 104 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"



 



 

#line 119 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"


 



 

#line 151 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"

#line 176 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"


 



 







 



 







 



 

#line 214 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"


 



 







 



 




 
#line 261 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"



 



 



 



 

void DAC_DeInit(void);
void DAC_Init(uint32_t DAC_Channel, DAC_InitTypeDef* DAC_InitStruct);
void DAC_StructInit(DAC_InitTypeDef* DAC_InitStruct);
void DAC_Cmd(uint32_t DAC_Channel, FunctionalState NewState);



void DAC_DMACmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_SoftwareTriggerCmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_DualSoftwareTriggerCmd(FunctionalState NewState);
void DAC_WaveGenerationCmd(uint32_t DAC_Channel, uint32_t DAC_Wave, FunctionalState NewState);
void DAC_SetChannel1Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetChannel2Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetDualChannelData(uint32_t DAC_Align, uint16_t Data2, uint16_t Data1);
uint16_t DAC_GetDataOutputValue(uint32_t DAC_Channel);
#line 299 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dac.h"








 



 



 

 
#line 46 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"



 



 



 



 

typedef struct
{
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_MemoryBaseAddr;      

  uint32_t DMA_DIR;                
 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_M2M;                
 
}DMA_InitTypeDef;



 



 

#line 107 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"



 







 



 







 



 







 



 

#line 154 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"


 



 

#line 168 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"


 



 






 



 

#line 195 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"


 



 







 



 






#line 248 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"

#line 269 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"



#line 296 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"



 



 
#line 332 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"

#line 353 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"



#line 380 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_dma.h"


 



 





 



 



 



 



 

void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx);
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState);
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState);
void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber); 
uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx);
FlagStatus DMA_GetFlagStatus(uint32_t DMAy_FLAG);
void DMA_ClearFlag(uint32_t DMAy_FLAG);
ITStatus DMA_GetITStatus(uint32_t DMAy_IT);
void DMA_ClearITPendingBit(uint32_t DMAy_IT);








 



 



 

 
#line 52 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_exti.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_exti.h"



 



 



 



 

typedef enum
{
  EXTI_Mode_Interrupt = 0x00,
  EXTI_Mode_Event = 0x04
}EXTIMode_TypeDef;





 

typedef enum
{
  EXTI_Trigger_Rising = 0x08,
  EXTI_Trigger_Falling = 0x0C,  
  EXTI_Trigger_Rising_Falling = 0x10
}EXTITrigger_TypeDef;






 

typedef struct
{
  uint32_t EXTI_Line;               
 
   
  EXTIMode_TypeDef EXTI_Mode;       
 

  EXTITrigger_TypeDef EXTI_Trigger; 
 

  FunctionalState EXTI_LineCmd;     
  
}EXTI_InitTypeDef;



 



 



 

#line 124 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_exti.h"
                                          
#line 136 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_exti.h"

                    


 



 



 



 



 

void EXTI_DeInit(void);
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line);
void EXTI_ClearFlag(uint32_t EXTI_Line);
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line);
void EXTI_ClearITPendingBit(uint32_t EXTI_Line);








 



 



 

 
#line 55 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"



 



 



 



 

typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_PG,
  FLASH_ERROR_WRP,
  FLASH_COMPLETE,
  FLASH_TIMEOUT
}FLASH_Status;



 



 



 

#line 77 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"


 



 







 



 







 



 

 
#line 118 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"

 
#line 144 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"

 
#line 211 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"











 



 







 



 







 



 





#line 270 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"


 


 
#line 291 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"






 



 
#line 333 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"





 
#line 346 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"



 



 



 



 



 

 
void FLASH_SetLatency(uint32_t FLASH_Latency);
void FLASH_HalfCycleAccessCmd(uint32_t FLASH_HalfCycleAccess);
void FLASH_PrefetchBufferCmd(uint32_t FLASH_PrefetchBuffer);
void FLASH_Unlock(void);
void FLASH_Lock(void);
FLASH_Status FLASH_ErasePage(uint32_t Page_Address);
FLASH_Status FLASH_EraseAllPages(void);
FLASH_Status FLASH_EraseOptionBytes(void);
FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data);
FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data);
FLASH_Status FLASH_ProgramOptionByteData(uint32_t Address, uint8_t Data);
FLASH_Status FLASH_EnableWriteProtection(uint32_t FLASH_Pages);
FLASH_Status FLASH_ReadOutProtection(FunctionalState NewState);
FLASH_Status FLASH_UserOptionByteConfig(uint16_t OB_IWDG, uint16_t OB_STOP, uint16_t OB_STDBY);
uint32_t FLASH_GetUserOptionByte(void);
uint32_t FLASH_GetWriteProtectionOptionByte(void);
FlagStatus FLASH_GetReadOutProtectionStatus(void);
FlagStatus FLASH_GetPrefetchBufferStatus(void);
void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState);
FlagStatus FLASH_GetFlagStatus(uint32_t FLASH_FLAG);
void FLASH_ClearFlag(uint32_t FLASH_FLAG);
FLASH_Status FLASH_GetStatus(void);
FLASH_Status FLASH_WaitForLastOperation(uint32_t Timeout);

 
void FLASH_UnlockBank1(void);
void FLASH_LockBank1(void);
FLASH_Status FLASH_EraseAllBank1Pages(void);
FLASH_Status FLASH_GetBank1Status(void);
FLASH_Status FLASH_WaitForLastBank1Operation(uint32_t Timeout);

#line 408 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_flash.h"








 



 



 

 
#line 58 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_fsmc.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_fsmc.h"



 



 



 



 

typedef struct
{
  uint32_t FSMC_AddressSetupTime;       


 

  uint32_t FSMC_AddressHoldTime;        


 

  uint32_t FSMC_DataSetupTime;          


 

  uint32_t FSMC_BusTurnAroundDuration;  


 

  uint32_t FSMC_CLKDivision;            

 

  uint32_t FSMC_DataLatency;            





 

  uint32_t FSMC_AccessMode;             
 
}FSMC_NORSRAMTimingInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_Bank;                
 

  uint32_t FSMC_DataAddressMux;      

 

  uint32_t FSMC_MemoryType;          

 

  uint32_t FSMC_MemoryDataWidth;     
 

  uint32_t FSMC_BurstAccessMode;     

 
                                       
  uint32_t FSMC_AsynchronousWait;     

 

  uint32_t FSMC_WaitSignalPolarity;  

 

  uint32_t FSMC_WrapMode;            

 

  uint32_t FSMC_WaitSignalActive;    


 

  uint32_t FSMC_WriteOperation;      
 

  uint32_t FSMC_WaitSignal;          

 

  uint32_t FSMC_ExtendedMode;        
 

  uint32_t FSMC_WriteBurst;          
  

  FSMC_NORSRAMTimingInitTypeDef* FSMC_ReadWriteTimingStruct;    

  FSMC_NORSRAMTimingInitTypeDef* FSMC_WriteTimingStruct;            
}FSMC_NORSRAMInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_SetupTime;      



 

  uint32_t FSMC_WaitSetupTime;  



 

  uint32_t FSMC_HoldSetupTime;  




 

  uint32_t FSMC_HiZSetupTime;   



 
}FSMC_NAND_PCCARDTimingInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_Bank;              
 

  uint32_t FSMC_Waitfeature;      
 

  uint32_t FSMC_MemoryDataWidth;  
 

  uint32_t FSMC_ECC;              
 

  uint32_t FSMC_ECCPageSize;      
 

  uint32_t FSMC_TCLRSetupTime;    

 

  uint32_t FSMC_TARSetupTime;     

  

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;     

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;  
}FSMC_NANDInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_Waitfeature;    
 

  uint32_t FSMC_TCLRSetupTime;  

 

  uint32_t FSMC_TARSetupTime;   

  

  
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;  

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;    
  
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_IOSpaceTimingStruct;    
}FSMC_PCCARDInitTypeDef;



 



 



 






 



   




 



     



 



















 



 








 



 

#line 317 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_fsmc.h"



 



 








 



 







 
  


 







 
  


 








 



 








 



 








 



 





                              


 



 







 



 









 



 







 



 





 



 





 



 





 



 





 



 





 



 





 



 

#line 521 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_fsmc.h"



 



 
  


 



 








 




 








 



 

#line 577 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_fsmc.h"



 



 





 



 





 



 





 



 





 



 





 



 





 



 

#line 653 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_fsmc.h"


 



 

#line 669 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_fsmc.h"





 



 



 



 



 



 

void FSMC_NORSRAMDeInit(uint32_t FSMC_Bank);
void FSMC_NANDDeInit(uint32_t FSMC_Bank);
void FSMC_PCCARDDeInit(void);
void FSMC_NORSRAMInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NANDInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_PCCARDInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_NORSRAMStructInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NANDStructInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_PCCARDStructInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_NORSRAMCmd(uint32_t FSMC_Bank, FunctionalState NewState);
void FSMC_NANDCmd(uint32_t FSMC_Bank, FunctionalState NewState);
void FSMC_PCCARDCmd(FunctionalState NewState);
void FSMC_NANDECCCmd(uint32_t FSMC_Bank, FunctionalState NewState);
uint32_t FSMC_GetECC(uint32_t FSMC_Bank);
void FSMC_ITConfig(uint32_t FSMC_Bank, uint32_t FSMC_IT, FunctionalState NewState);
FlagStatus FSMC_GetFlagStatus(uint32_t FSMC_Bank, uint32_t FSMC_FLAG);
void FSMC_ClearFlag(uint32_t FSMC_Bank, uint32_t FSMC_FLAG);
ITStatus FSMC_GetITStatus(uint32_t FSMC_Bank, uint32_t FSMC_IT);
void FSMC_ClearITPendingBit(uint32_t FSMC_Bank, uint32_t FSMC_IT);








 



 



  

 
#line 61 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"



 



 



 

#line 53 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"
                                     


 

typedef enum
{ 
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz, 
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;





 

typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;








 

typedef struct
{
  uint16_t GPIO_Pin;             
 

  GPIOSpeed_TypeDef GPIO_Speed;  
 

  GPIOMode_TypeDef GPIO_Mode;    
 
}GPIO_InitTypeDef;




 

typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;





 



 



 

#line 144 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"



#line 163 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"



 



 

#line 204 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"







#line 217 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"






#line 245 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"
                              


  



 

#line 266 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"

#line 274 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"



 



 

#line 299 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"

#line 316 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_gpio.h"



 



  








                                                 


 



 



 



 

void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_AFIODeInit(void);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_EventOutputCmd(FunctionalState NewState);
void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState);
void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface);








 



 



 

 
#line 64 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_iwdg.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_iwdg.h"



 



 



 



 



 



 







 



 

#line 84 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_iwdg.h"


 



 







 



 



 



 



 

void IWDG_WriteAccessCmd(uint16_t IWDG_WriteAccess);
void IWDG_SetPrescaler(uint8_t IWDG_Prescaler);
void IWDG_SetReload(uint16_t Reload);
void IWDG_ReloadCounter(void);
void IWDG_Enable(void);
FlagStatus IWDG_GetFlagStatus(uint16_t IWDG_FLAG);








 



 



 

 
#line 70 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"



 



 



 

typedef struct
{
  uint32_t SYSCLK_Frequency;   
  uint32_t HCLK_Frequency;     
  uint32_t PCLK1_Frequency;    
  uint32_t PCLK2_Frequency;    
  uint32_t ADCCLK_Frequency;   
}RCC_ClocksTypeDef;



 



 



 









  



 



#line 94 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"



  



 
#line 126 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"

#line 141 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


 



 
#line 175 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


 




 
#line 196 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


 

#line 283 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"




 

#line 295 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


 



 

#line 317 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


  



 

#line 333 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


 



 

#line 347 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"

#line 364 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"




 




 








 
#line 396 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


#line 423 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"
  



 

#line 435 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


 



 








 



 

#line 462 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


 



 







#line 489 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"


 



 

#line 518 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"




  



 

#line 553 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"
 




 



 







#line 586 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"



 



 

#line 606 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"

#line 625 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"




 



 



 



 



 

void RCC_DeInit(void);
void RCC_HSEConfig(uint32_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);





#line 666 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_rcc.h"

void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);


 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource);




void RCC_ADCCLKConfig(uint32_t RCC_PCLK2);






void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);





void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCO);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);








 



 



  

 
#line 76 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"



 



  



  




 

typedef struct
{
  uint16_t TIM_Prescaler;         
 

  uint16_t TIM_CounterMode;       
 

  uint16_t TIM_Period;            

  

  uint16_t TIM_ClockDivision;     
 

  uint8_t TIM_RepetitionCounter;  






 
} TIM_TimeBaseInitTypeDef;       



 

typedef struct
{
  uint16_t TIM_OCMode;        
 

  uint16_t TIM_OutputState;   
 

  uint16_t TIM_OutputNState;  

 

  uint16_t TIM_Pulse;         
 

  uint16_t TIM_OCPolarity;    
 

  uint16_t TIM_OCNPolarity;   

 

  uint16_t TIM_OCIdleState;   

 

  uint16_t TIM_OCNIdleState;  

 
} TIM_OCInitTypeDef;



 

typedef struct
{

  uint16_t TIM_Channel;      
 

  uint16_t TIM_ICPolarity;   
 

  uint16_t TIM_ICSelection;  
 

  uint16_t TIM_ICPrescaler;  
 

  uint16_t TIM_ICFilter;     
 
} TIM_ICInitTypeDef;




 

typedef struct
{

  uint16_t TIM_OSSRState;        
 

  uint16_t TIM_OSSIState;        
 

  uint16_t TIM_LOCKLevel;        
  

  uint16_t TIM_DeadTime;         

 

  uint16_t TIM_Break;            
 

  uint16_t TIM_BreakPolarity;    
 

  uint16_t TIM_AutomaticOutput;  
 
} TIM_BDTRInitTypeDef;



 

#line 186 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"

 



 






 
#line 205 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"
									                                 
 
#line 216 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"

                                             
#line 225 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"

 
#line 236 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"

 
#line 249 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"

                                         
#line 266 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"

 
#line 279 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"
                                                                                                                                                                                                                          


  



 

#line 308 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


 



 







  



 

#line 341 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 355 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


 



 

#line 373 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 







 



 
  






 



 







  



 







  



 







  



 







  



 







  



 







  



 







  



 

#line 497 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 







 



 







  



 







  



 







  



 

#line 561 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 577 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 593 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 610 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"

#line 619 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 665 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 709 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 725 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"



  



 

#line 742 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 770 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 784 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



  






 



 







  



 







  



 

#line 833 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  




 

#line 851 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"



  



 

#line 866 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 







  



 





                                     


  



 







  



 

#line 927 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 

#line 943 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


  



 







  



 

#line 987 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"
                               
                               



  



 




  



 




  



 

#line 1034 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_tim.h"


 



 



 



  



 

void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint16_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint16_t Autoreload);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint16_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint16_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint16_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint16_t Compare4);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
uint16_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture4(TIM_TypeDef* TIMx);
uint16_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);








  



  



 

 
#line 88 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_usart.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_usart.h"



 



  



  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            


 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;



  



  
  
















  
  


                                    




  



  
  
#line 146 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_usart.h"


  



  
  
#line 160 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_usart.h"


  



  
  





  



  
#line 187 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
#line 264 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_usart.h"


 



 







  



 







 



 
  







 



 







  



 

#line 336 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_usart.h"
                              
#line 344 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_usart.h"



  



  



  



  



 

void USART_DeInit(USART_TypeDef* USARTx);
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);
void USART_SendBreak(USART_TypeDef* USARTx);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);








  



  



  

 
#line 91 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_wwdg.h"




















 

 







 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_wwdg.h"



 



  



  
  


  



  
  


  
  
#line 68 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\stm32f10x_wwdg.h"



  



  



  


  



  
  
void WWDG_DeInit(void);
void WWDG_SetPrescaler(uint32_t WWDG_Prescaler);
void WWDG_SetWindowValue(uint8_t WindowValue);
void WWDG_EnableIT(void);
void WWDG_SetCounter(uint8_t Counter);
void WWDG_Enable(uint8_t Counter);
FlagStatus WWDG_GetFlagStatus(void);
void WWDG_ClearFlag(void);









  



  



  

 
#line 94 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\misc.h"




















 

 
#line 207 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\misc.h"



 



 



 

 
#line 97 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"


 
 

 
 

 
#line 121 ".\\RTE\\Device\\STM32F103ZE\\stm32f10x_conf.h"



 
#line 8303 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\Include\\stm32f10x.h"




 

















 









 

  

 

 
#line 33 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\misc.h"



 



 



 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  

 

  uint8_t NVIC_IRQChannelSubPriority;         

 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 


 



 
























 



 



 



 







 



 

#line 133 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\misc.h"


 



 

#line 151 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\inc\\misc.h"















 



 







 



 



 



 



 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 



 

 
#line 25 "C:\\Keil_v5\\ARM\\PACK\\Keil\\STM32F1xx_DFP\\2.2.0\\Device\\StdPeriph_Driver\\src\\misc.c"



 




 



 



  



 




 



 



 



 



 



 



 



 
















 
void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup)
{
   
  ((void)0);
  
   
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = ((uint32_t)0x05FA0000) | NVIC_PriorityGroup;
}







 
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct)
{
  uint32_t tmppriority = 0x00, tmppre = 0x00, tmpsub = 0x0F;
  
   
  ((void)0);
  ((void)0);  
  ((void)0);
    
  if (NVIC_InitStruct->NVIC_IRQChannelCmd != DISABLE)
  {
         
    tmppriority = (0x700 - ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR) & (uint32_t)0x700))>> 0x08;
    tmppre = (0x4 - tmppriority);
    tmpsub = tmpsub >> tmppriority;

    tmppriority = (uint32_t)NVIC_InitStruct->NVIC_IRQChannelPreemptionPriority << tmppre;
    tmppriority |=  NVIC_InitStruct->NVIC_IRQChannelSubPriority & tmpsub;
    tmppriority = tmppriority << 0x04;
        
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[NVIC_InitStruct->NVIC_IRQChannel] = tmppriority;
    
     
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[NVIC_InitStruct->NVIC_IRQChannel >> 0x05] =
      (uint32_t)0x01 << (NVIC_InitStruct->NVIC_IRQChannel & (uint8_t)0x1F);
  }
  else
  {
     
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[NVIC_InitStruct->NVIC_IRQChannel >> 0x05] =
      (uint32_t)0x01 << (NVIC_InitStruct->NVIC_IRQChannel & (uint8_t)0x1F);
  }
}










 
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset)
{ 
   
  ((void)0);
  ((void)0);  
   
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR = NVIC_VectTab | (Offset & (uint32_t)0x1FFFFF80);
}










 
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);  
  
  if (NewState != DISABLE)
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SCR |= LowPowerMode;
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SCR &= (uint32_t)(~(uint32_t)LowPowerMode);
  }
}








 
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource)
{
   
  ((void)0);
  if (SysTick_CLKSource == ((uint32_t)0x00000004))
  {
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL |= ((uint32_t)0x00000004);
  }
  else
  {
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL &= ((uint32_t)0xFFFFFFFB);
  }
}



 



 



 

 
