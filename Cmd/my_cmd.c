#include "main.h"


cmd_analyze_struct cmd_analyze; 

int do_help (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[]);
void print_da_all (void);

/*命令表*/  

s_system_env my_env;

s_task_parameter task_para;

void system_env_init (void)
{
	int i;
	i = (unsigned int)do_help;
	S8 *p = (S8 *) &my_env;
	for (i = 0; i < sizeof(s_system_env); i++)
	{
		*(p++) = 0;
	}	
	my_env.sys_break = 1;
	my_env.modbus_rtu_addr = MODBUS_RTU_ADDR;
	//my_env.print = 1;
}

void Rollback(void)
{
	int i;
	for (i = 0; i < my_env.roll_count; i++)
	{
		uart1_send_data (0x1b);
		uart1_send_data (0x5b);
		uart1_send_data (0x41);
	}
	my_env.roll_count = 0;
}
void Rollforward(u16 lines)
{
	int i;
	for (i = 0; i < lines; i++)
	{
		uart1_send_data (0x1b);
		uart1_send_data (0x5b);
		uart1_send_data (0x42);
	}
}


unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
{
	unsigned long result = 0,value;

	if (*cp == '0') {
		cp++;
		if ((*cp == 'x') && isxdigit(cp[1])) {
			base = 16;
			cp++;
		}
		if (!base) {
			base = 8;
		}
	}
	if (!base) {
		base = 10;
	}
	while (isxdigit(*cp) && (value = isdigit(*cp) ? *cp-'0' : (islower(*cp)
	    ? toupper(*cp) : *cp)-'A'+10) < base) {
		result = result*base + value;
		cp++;
	}
	if (endp)
		*endp = (char *)cp;
	return result;
}

long simple_strtol(const char *cp,char **endp,unsigned int base)
{
	if(*cp=='-')
		return -simple_strtoul(cp+1,endp,base);
	return simple_strtoul(cp,endp,base);
}

int set_ctrlc(int state)
{
	int prev;
	my_env.sys_break = state;
	return prev;
}

int had_ctrlc (void)
{
	return my_env.sys_break;
}

void clear_ctrlc(void)
{
	my_env.sys_break = 0;
}

/****************************************************************************/

int parse_line (char *line, char *argv[])
{
	int nargs = 0;

#ifdef DEBUG_PARSER
	printf ("parse_line: \"%s\"\n", line);
#endif
	while (nargs < CONFIG_SYS_MAXARGS) {

		/* skip any white space */
		while ((*line == ' ') || (*line == '\t')) {
			++line;
		}

		if (*line == '\0') {	/* end of line, no more args	*/
			argv[nargs] = NULL;
#ifdef DEBUG_PARSER
		printf ("parse_line: nargs=%d\n", nargs);
#endif
			return (nargs);
		}

		argv[nargs++] = line;	/* begin of argument string	*/

		/* find end of string */
		while (*line && (*line != ' ') && (*line != '\t')) {
			++line;
		}

		if (*line == '\0') {	/* end of line, no more args	*/
			argv[nargs] = NULL;
#ifdef DEBUG_PARSER
		printf ("parse_line: nargs=%d\n", nargs);
#endif
			return (nargs);
		}

		*line++ = '\0';		/* terminate current arg	 */
	}

	printf ("** Too many args (max. %d) **\n", CONFIG_SYS_MAXARGS);

#ifdef DEBUG_PARSER
	printf ("parse_line: nargs=%d\n", nargs);
#endif
	return (nargs);
}
/****************************************************************************/

static void process_macros (const char *input, char *output)
{
	char c, prev;
	const char *varname_start = NULL;
	int inputcnt = strlen (input);
	int outputcnt = CONFIG_SYS_CBSIZE;
	int state = 0;		/* 0 = waiting for '$'  */

	/* 1 = waiting for '(' or '{' */
	/* 2 = waiting for ')' or '}' */
	/* 3 = waiting for '''  */
#ifdef DEBUG_PARSER
	char *output_start = output;

	printf ("[PROCESS_MACROS] INPUT len %d: \"%s\"\n", strlen (input),
		input);
#endif

	prev = '\0';		/* previous character   */

	while (inputcnt && outputcnt) {
		c = *input++;
		inputcnt--;

		if (state != 3) {
			/* remove one level of escape characters */
			if ((c == '\\') && (prev != '\\')) {
				if (inputcnt-- == 0)
					break;
				prev = c;
				c = *input++;
			}
		}

		switch (state) {
		case 0:	/* Waiting for (unescaped) $    */
			if ((c == '\'') && (prev != '\\')) {
				state = 3;
				break;
			}
			if ((c == '$') && (prev != '\\')) {
				state++;
			} else {
				*(output++) = c;
				outputcnt--;
			}
			break;
		case 1:	/* Waiting for (        */
			if (c == '(' || c == '{') {
				state++;
				varname_start = input;
			} else {
				state = 0;
				*(output++) = '$';
				outputcnt--;

				if (outputcnt) {
					*(output++) = c;
					outputcnt--;
				}
			}
			break;
		case 2:	/* Waiting for )        */
			if (c == ')' || c == '}') {
				int i;
				char envname[CONFIG_SYS_CBSIZE], *envval;
				int envcnt = input - varname_start - 1;	/* Varname # of chars */

				/* Get the varname */
				for (i = 0; i < envcnt; i++) {
					envname[i] = varname_start[i];
				}
				envname[i] = 0;

				/* Get its value */
				envval = getenv (envname);

				/* Copy into the line if it exists */
				if (envval != NULL)
					while ((*envval) && outputcnt) {
						*(output++) = *(envval++);
						outputcnt--;
					}
				/* Look for another '$' */
				state = 0;
			}
			break;
		case 3:	/* Waiting for '        */
			if ((c == '\'') && (prev != '\\')) {
				state = 0;
			} else {
				*(output++) = c;
				outputcnt--;
			}
			break;
		}
		prev = c;
	}

	if (outputcnt)
		*output = 0;
	else
		*(output - 1) = 0;

#ifdef DEBUG_PARSER
	printf ("[PROCESS_MACROS] OUTPUT len %d: \"%s\"\n",
		strlen (output_start), output_start);
#endif
}

/****************************************************************************
 * returns:
 *	1  - command executed, repeatable
 *	0  - command executed but not repeatable, interrupted commands are
 *	     always considered not repeatable
 *	-1 - not executed (unrecognized, bootd recursion or too many args)
 *           (If cmd is NULL or "" or longer than CONFIG_SYS_CBSIZE-1 it is
 *           considered unrecognized)
 *
 * WARNING:
 *
 * We must create a temporary copy of the command since the command we get
 * may be the result from getenv(), which returns a pointer directly to
 * the environment data, which may change magicly when the command we run
 * creates or modifies environment variables (like "bootp" does).
 */
int run_command (const char *cmd, int flag)
{
	cmd_tbl_t *cmdtp;
	char cmdbuf[CFG_CBSIZE];	/* working copy of cmd		*/
	char *token;			/* start of token in cmdbuf	*/
	char *sep;			/* end of token (separator) in cmdbuf */
	char finaltoken[CFG_CBSIZE];
	char *str = cmdbuf;
	char *argv[CFG_MAXARGS + 1];	/* NULL terminated	*/
	int argc, inquotes;
	int repeatable = 1;
	int rc = 0;

#ifdef DEBUG_PARSER
	my_print ("[RUN_COMMAND] cmd[%p]=\"", cmd);
	my_puts (cmd ? cmd : "NULL");	/* use my_puts - string may be loooong */
	my_puts ("\"\n");
#endif

	clear_ctrlc();		/* forget any previous Control C */

	if (!cmd || !*cmd) {
		return -1;	/* empty command */
	}

	if (strlen(cmd) >= CFG_CBSIZE) {
		my_puts ("## Command too long!\n");
		return -1;
	}

	strcpy (cmdbuf, cmd);

	/* Process separators and check for invalid
	 * repeatable commands
	 */

#ifdef DEBUG_PARSER
	my_print ("[PROCESS_SEPARATORS] %s\n", cmd);
#endif
	while (*str) {

		/*
		 * Find separator, or string end
		 * Allow simple escape of ';' by writing "\;"
		 */
		for (inquotes = 0, sep = str; *sep; sep++) {
			if ((*sep=='\'') &&
			    (*(sep-1) != '\\'))
				inquotes=!inquotes;

			if (!inquotes &&
			    (*sep == ';') &&	/* separator		*/
			    ( sep != str) &&	/* past string start	*/
			    (*(sep-1) != '\\'))	/* and NOT escaped	*/
				break;
		}

		/*
		 * Limit the token to data between separators
		 */
		token = str;
		if (*sep) {
			str = sep + 1;	/* start of command for next pass */
			*sep = '\0';
		}
		else
			str = sep;	/* no more commands for next pass */
#ifdef DEBUG_PARSER
		my_print ("token: \"%s\"\n", token);
#endif

		/* find macros in this token and replace them */
		process_macros (token, finaltoken);

		/* Extract arguments */
		if ((argc = parse_line (finaltoken, argv)) == 0) {
			rc = -1;	/* no command at all */
			continue;
		}

		/* Look up command in command table */
		if ((cmdtp = find_cmd(argv[0])) == NULL) {
			my_print ("Unknown command '%s' - try 'help'\n", argv[0]);
			rc = -1;	/* give up after bad command */
			continue;
		}

		/* found - check max args */
		if (argc > cmdtp->maxargs) {
			my_print ("Usage:\n%s\n", cmdtp->usage);
			rc = -1;
			continue;
		}

#if (CONFIG_COMMANDS & CFG_CMD_BOOTD)
		/* avoid "bootd" recursion */
		if (cmdtp->cmdhandle == do_bootd) {
#ifdef DEBUG_PARSER
			my_print ("[%s]\n", finaltoken);
#endif
			if (flag & CMD_FLAG_BOOTD) {
				my_puts ("'bootd' recursion detected\n");
				rc = -1;
				continue;
			} else {
				flag |= CMD_FLAG_BOOTD;
			}
		}
#endif	/* CFG_CMD_BOOTD */

		/* OK - call function to do the command */
		if ((cmdtp->cmdhandle) (cmdtp, flag, argc, argv) != 0) {
			rc = -1;
		}

		repeatable &= cmdtp->repeatable;

		/* Did the user stop this? */
		if (had_ctrlc ())
			return 0;	/* if stopped then not repeatable */
	}

	return rc ? rc : repeatable;
}

	

#define HANDLE_TASK_PRIO 16 
//共用开始任务堆栈，因为开始任务完成后就被删除了
//OS_STK HANDLE_TASK_STK[HANDLE_STK_SIZE]; 
extern OS_STK START_TASK_STK[START_STK_SIZE]; 
/*命令行分析任务*/  
void handle_task (void * pdata)
{
	INT8U state; 

	if (run_command (pdata, 0) < 0)
	{
		//my_println ("run_command exec failed");
	}
	set_ctrlc (1);
	cmd ();
	
	my_env.tty = TTY_IDLE;		
	start_uart1_receive ();
	state = OSTaskDel(OS_PRIO_SELF);		
	if (state != OS_ERR_NONE)			
	{
		my_println ("delete handle_task failed");
	}	
}

void vTaskCmdAnalyze( void )  
{   
	INT8U state;                                                            
    
	state = OSTaskCreate(handle_task, (void*)(cmd_analyze.rec_buf),
						(OS_STK*)&START_TASK_STK[START_STK_SIZE-1],
						HANDLE_TASK_PRIO); 
	if (state != OS_ERR_NONE)
	{  
		my_println ("OSTaskCreate failed");
	}
}
void print_system_env_info (void) 
{                  
	my_println("----------------------------------------------------");        
	my_println("              Compile Time Info                     ");     
	my_println("              %s %s                    ", __DATE__, __TIME__);                                                                          
	my_println("----------------print system env info---------------");        
	my_println ("sys_break        = %d", my_env.sys_break);             
	my_println ("set_watch_ch     = %d", g_counter.set_watch_ch);                    
	my_println ("roll_count       = %d", my_env.roll_count);               
	my_println ("print            = %d", my_env.print);             
//	my_println ("save_good_data   = %d", my_env.save_good_data);              
//	my_println ("coin_index       = %d", my_env.coin_index);            
//	my_println ("country_index    = %d", my_env.country_index);        
//	my_println ("workstep         = %d", my_env.workstep);            
//	my_println ("pre_workstep     = %d", my_env.pre_workstep);         
	my_println ("uart0_cmd_flag   = %d", my_env.uart0_cmd_flag);       
//	my_println("----------------------------------------------------");       
//	my_println ("kick_start_delay_time = %d", para_set_value.data.kick_start_delay_time);         
//	my_println ("kick_keep_time        = %d", para_set_value.data.kick_keep_time);             
	my_println("----------------------------------------------------");        
}  

void print_da_all (void)
{
	#define DA_ALL_ROLL_N 6
	u16 i;
	
	clear_ctrlc();		/* forget any previous Control C */
	my_println ("------------------------------------------");
	my_println ("-------------live all da value------------");
	my_println ("------------------------------------------");
	my_env.roll_count = 0;
	while (1)
	{
		Rollback ();
		for(i=0;i<12;i++)
		{
			//value[i]= GetVolt(After_filter[i]);
			my_print ("%02d:%05d  ", i, After_filter[i]);
			if ((i + 1) % 4 == 0)
				my_println ();
		}
		my_println ("------------------------------------------");
		my_println (" CPU Usage: %02d%%",OSCPUUsage);  
		my_println ("------------------------------------------");
		delay_ms(500);
		
		if (had_ctrlc ())
			break;
	}
	my_println ();
}

void print_count (void)
{
	U16 i;
	clear_ctrlc();		/* forget any previous Control C */
	
	my_println ("------------------------------------------");
	my_println ("-----------live count value---------------");
	my_println ("------------------------------------------");
	my_env.roll_count = 0;
	while (1)
	{
		Rollback ();
		my_print (" Current Time: %04d-%02d-%2d  ", calendar.w_year, calendar.w_month, calendar.w_date); 
		my_println ("%02d:%02d:%02d", calendar.hour, calendar.min, calendar.sec);
		for(i=0;i<12;i++)
		{
			my_print ("%02d:%05d  ", i, g_counter.ch[i].cur_count);
			if ((i + 1) % 4 == 0)
				my_println ();
		}
		my_println ("------------------------------------------");
		my_println (" CPU Usage: %02d%%",OSCPUUsage);  
		my_println ("------------------------------------------");
		delay_ms(200);
		
		if (had_ctrlc ())
			break;
	}
	my_println ();
}

void print_step (void)
{
	U16 i;
	clear_ctrlc();		/* forget any previous Control C */
	
	my_println ("------------------------------------------");
	my_println ("---------live process_step value----------");
	my_println ("------------------------------------------");
	my_env.roll_count = 0;
	while (1)
	{
		Rollback ();
		for(i=0;i<12;i++)
		{
			my_print ("%02d:%05d  ", i, g_counter.ch[i].process_step);
			if ((i + 1) % 4 == 0)
				my_println ();
		}
		my_println ("------------------------------------------");
		my_println (" CPU Usage: %02d%%",OSCPUUsage);  
		my_println ("------------------------------------------");
		delay_ms(500);
		
		if (had_ctrlc ())
			break;
	}
	my_println ();
}


/*提供给串口中断服务程序，保存串口接收到的单个字符*/                                                                    
//接收数据                                                                         
uint32_t rec_count = 0;                  
void fill_rec_buf(char data)                                                           
{                                       

	if (data == CTRL_C && my_env.tty == TTY_CONSOLE)
	{
		my_env.sys_break = 1;
		return;
	}	
    
	cmd_analyze.rec_buf[rec_count] = data;                                                                        
	rec_count++;                                                                   																   
	/*防御性代码，防止数组越界*/                                                    
	if(rec_count>=CMD_BUF_LEN)                                                      
	{                                                                               
		rec_count=0;                                                                
	}   
	
	if (my_env.tty == TTY_MODBUS){
	#if (MODBUS_RTU_USE_UART == 1)
		TIM_SetCounter(TIM7,0);//当接收到一个新的字节，将定时器7复位为0，重新计时（相当于喂狗）
		TIM_Cmd(TIM7,ENABLE);//开始计时
	#endif
		return ;
	}else if (cmd_analyze.rec_buf[0] > 7){
		if (data != '\b'){
			uart1_send_data(data);	
		}
	}else{
	#if (MODBUS_RTU_USE_UART == 1)
		TIM_SetCounter(TIM7,0);//当接收到一个新的字节，将定时器7复位为0，重新计时（相当于喂狗）
		TIM_Cmd(TIM7,ENABLE);//开始计时
	#endif
		my_env.tty = TTY_MODBUS;
		return ;
	}
	
	if(my_env.sys_break == 1)
	{
		
		if (data == '\b')
		{
			if (rec_count > 0)
			{
				uart1_send_data('\b');
				uart1_send_data(' ');
				uart1_send_data('\b');
				//uart1_send_data (0x1b);
				//uart1_send_data (0x5b);
				//uart1_send_data (0x44);
				rec_count--;
				cmd_analyze.rec_buf[rec_count] = ' ';
			}
			return;
		}else if(0x0D == data){ 
			if (rec_count > 0){				
				cmd_analyze.rec_buf[rec_count - 1] = '\0';  
				rec_count=0;    
			}	  
			uart1_send_data('\n');
			OSQPost(cmd_msg, (void *) 0x55);//发送消息	                          
		}else{     
			my_env.tty = TTY_CONSOLE;	                                                                                    
		}     
	}
	else{
		rec_count = 0;
	}
}                                                                                      
 
/*
 * reset the cpu by setting up the watchdog timer and let him time out
 */
int do_reset (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
	my_println ("Reset System...");
	NVIC_SystemReset ();
	return 0;
}
MY_CMD(
	reset,	8,	1,	do_reset,
	"reset - reset the system\n",
	"reset\n"
);



int ctrlc (void)
{
//	if (!ctrlc_disabled && gd->have_console) {
//		if (tstc ()) {
//			switch (getc ()) {
//			case 0x03:		/* ^C - Control C */
//				ctrlc_was_pressed = 1;
//				return 1;
//			default:
//				break;
//			}
//		}
//	}
	return 0;
}



int cmd_usage(cmd_tbl_t *cmdtp)
{
	printf("%s", cmdtp->usage);
#ifdef	CONFIG_SYS_LONGHELP
	printf("Usage:\n");

	if (!cmdtp->help) {
		puts ("- No additional help available.\n");
		return 1;
	}

	my_puts (cmdtp->help);
	//my_putc ('\n');
	//my_putc ('\n');
#endif	/* CONFIG_SYS_LONGHELP */
	return 0;
}

static int do_help (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[]);
MY_CMD(
	help,	CONFIG_SYS_MAXARGS,	1,	do_help,
	"print online help\n",
	"[command ...]\n"
	"    - show help information (for 'command')\n"
	"'help' prints online help for the monitor commands.\n"
	"Without arguments, it prints a short usage message for all commands.\n"
	"To get detailed help information for specific commands you can type\n"
	"'help' with one or more command names as arguments.\n"
);
/* This does not use the U_BOOT_CMD macro as ? can't be used in symbol names */
cmd_tbl_t __u_boot_cmd_question_mark Struct_Section = {
	"?",	CONFIG_SYS_MAXARGS,	1,	do_help,
	"alias for 'help' \n",
	""
};


/*
 * Use puts() instead of printf() to avoid printf buffer overflow
 * for long help messages
 */

static int do_help (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
	int i;
	int rcode = 0;
	cmdtp = &__my_cmd_help; //加上这一句防止my_cmd_sec这个Section 被编译器优化掉
	my_println ("-----------------------------------------------------------");
	if (argc == 1)
	{	/*show list of commands */

		int cmd_items = (unsigned int)MY_CMD_RO_SEC_LENGTH / sizeof (cmd_tbl_t);	/* pointer arith! */
		cmd_tbl_t *cmd_array[cmd_items];
		int i, j, swaps;

		/* Make array of commands from .uboot_cmd section */
		cmdtp = (cmd_tbl_t *)MY_CMD_RO_SEC_START;
		for (i = 0; i < cmd_items; i++) {
			cmd_array[i] = cmdtp++;
		}

		/* Sort command list (trivial bubble sort) */
		for (i = cmd_items - 1; i > 0; --i) {
			swaps = 0;
			for (j = 0; j < i; ++j) {
				if (strcmp (cmd_array[j]->name,
					    cmd_array[j + 1]->name) > 0) {
					cmd_tbl_t *tmp;
					tmp = cmd_array[j];
					cmd_array[j] = cmd_array[j + 1];
					cmd_array[j + 1] = tmp;
					++swaps;
				}
			}
			if (!swaps)
				break;
		}

		/* print short help (usage) */
		for (i = 0; i < cmd_items; i++) {
			const char *usage = cmd_array[i]->usage;

			/* allow user abort */
			if (ctrlc ())
				return 1;
			if (usage == NULL)
				continue;
			my_puts (usage);
		}
		my_println ("-----------------------------------------------------------");
		return 0;
	}
	/*
	 * command help (long version)
	 */
	for (i = 1; i < argc; ++i) {
		if ((cmdtp = find_cmd (argv[i])) != NULL) {
			rcode |= cmd_usage(cmdtp);
		} else {
			printf ("Unknown command '%s' - try 'help'\n"
				" without arguments for list of all\n"
				" known commands\n\n", argv[i]
					);
			rcode = 1;
		}
	}
	my_println ("-----------------------------------------------------------");
	return rcode;
}

int do_task_manager (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
	my_println ("------------------------------------------");
	my_print("                 Task View\n");  
	//my_print("\n Micrium uC/OS-II  \n");  
	my_print("             ST STM32 (Cortex-M3)\n\n");  
     
     
	my_print(" uC/OS-II: V%ld.%ld%ld\r\n",OSVersion()/100,(OSVersion() % 100) /   10,(OSVersion() % 10));  
	my_print(" TickRate: %ld  \r\n",OS_TICKS_PER_SEC);  
	my_print(" CPU Speed: %ld MHz  \r\n",SystemCoreClock / 1000000L);  
	my_print(" Number of tasks: %ld   \r\n", OSTaskCtr);  
	clear_ctrlc();/* forget any previous Control C */
	my_env.roll_count = 0;
	while (1)
	{	
		Rollback ();
		my_print (" Current Time: %04d-%02d-%2d  ", calendar.w_year, calendar.w_month, calendar.w_date); 
		my_println ("%02d:%02d:%02d", calendar.hour, calendar.min, calendar.sec);
		my_print(" tim2_irq_process_time: %06d us\n", tim2_irq_process_time);  
		my_print(" AD_process_time: %06d us\n", counter_process_time); 
		my_print(" dma_irq_cycle: %06d us\n", dma_irq_cycle);  
		my_print(" process_rdy: %06d \n", process_rdy);  
		my_print(" sys_run_time: %06d x100us \n", sys_run_time);  
		//my_print(" detect_chanel_index: %d \n", detect_chanel_index);  
		//my_print(" chanel_pos_index: %d \n", chanel_pos_index);   
		my_print(" #Ticks: %ld  \n",OSTime);  
		my_print(" #CtxSw: %ld  \n",OSCtxSwCtr);  	
		my_print(" OSIdleCtrRun: %ld  OSIdleCtrMax: %ld  \n", OSIdleCtrRun, OSIdleCtrMax);  		
		my_print(" CPU Usage: %02d%%\n",OSCPUUsage);  
		my_println ("------------------------------------------");
		delay_ms (1000);
		
		if (had_ctrlc ())
			break;
	}
	my_println ();
	return 0;
}

MY_CMD(
	task_manager,	3,	1,	do_task_manager,
	"task_manager - the os task_manager\n",
	"task_manager\n"
);

int do_print (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
	switch (argc){
		case 2:
			if (strcmp (argv[1], "count") == 0){
				print_count ();
				break;
			}else if (strcmp (argv[1], "step") == 0){
				print_step ();
				break;
			}
			cmd_usage (cmdtp);
			break;
		case 3:
			if (strcmp (argv[1], "ad") == 0)
			{
				if (strcmp (argv[2], "all") == 0)
				{
					print_da_all ();
					break;
				}
			}else if (strcmp (argv[1], "env") == 0){
				if (strcmp (argv[2], "-s") == 0)
				{
					print_system_env_info ();
					break;
				}
			}
			cmd_usage (cmdtp);
			break;
		default: cmd_usage (cmdtp);break;
	}
	return 0;
}

MY_CMD(
	print,	3,	1,	do_print,
	"print - print info of the arg\n",
	"print da 2\nprint da all\n"
);

int do_set (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{	
	U16 data_temp;
	switch (argc){
		case 3:
			if (strcmp (argv[1], "da") == 0){
				dac1_set_vol (simple_strtoul(argv[2], NULL, 10));
				break;
			}else if (strcmp (argv[1], "watch") == 0){
				data_temp = simple_strtoul(argv[2], NULL, 10);
				if (data_temp < CHANEL_NUM){
					g_counter.set_watch_ch = data_temp;
				}else{
					my_println ("chanel value must be 0 - %d", CHANEL_NUM);
				}
				break;
			}else if (strcmp (argv[1], "print") == 0){
				data_temp = simple_strtoul(argv[2], NULL, 10);
				if (data_temp == 0 || data_temp == 1){
					my_env.print = data_temp;
				}else{
					my_println ("print value must be 0 or 1");
				}
				break;
			}else if (strcmp (argv[1], "trig") == 0){
				data_temp = simple_strtoul(argv[2], NULL, 10);
				if (data_temp == 1){
					AD_buff.buffer_en = data_temp;
				}else{
					my_println ("trig value must 1");
				}
				break;
			}else if (strcmp (argv[1], "run") == 0){
				AD_buff.cir = 1;
				AD_buff.buffer_en = 1;
				start_vibrate ();
				break;
			}else if (strcmp (argv[1], "cir") == 0){
				data_temp = simple_strtoul(argv[2], NULL, 10);
				if (data_temp == 0 || data_temp == 1){
					AD_buff.cir = data_temp;
				}else{
					my_println ("cir value must 0 or 1");
				}
				break;
			}
			cmd_usage (cmdtp);
			break;
		default: cmd_usage (cmdtp);break;
	}
	return 0;
}
MY_CMD(
	set,	4,	1,	do_set,
	"set - set parameter value of the arg\n",
	"set name value\n"
);



/***************************************************************************
 * find command table entry for a command
 */
cmd_tbl_t *find_cmd (const char *cmd)
{
	cmd_tbl_t *cmdtp;
	cmd_tbl_t *cmdtp_temp = (cmd_tbl_t *)MY_CMD_RO_SEC_START;	/*Init value */
	const char *p;
	int len;
	int n_found = 0;

	/*
	 * Some commands allow length modifiers (like "cp.b");
	 * compare command name only until first dot.
	 */
	len = ((p = strchr(cmd, '.')) == NULL) ? strlen (cmd) : (p - cmd);

	for (cmdtp = (cmd_tbl_t *)MY_CMD_RO_SEC_START;
	     cmdtp != (cmd_tbl_t *)MY_CMD_RO_SEC_END;
	     cmdtp++) {
		if (strncmp (cmd, cmdtp->name, len) == 0) {
			if (len == strlen (cmdtp->name))
				return cmdtp;	/* full match */

			cmdtp_temp = cmdtp;	/* abbreviated command ? */
			n_found++;
		}
	}
	if (n_found == 1) {			/* exactly one match */
		return cmdtp_temp;
	}

	return NULL;	/* not found or ambiguous command */
}


 //遍历文件
 //path:路径
 //返回值:执行结果
FILINFO fileinfo;	//文件信息
DIR dir;  			//目录
u8 mf_scan_files(u8 * path)
{
	FRESULT res;	  
    char *fn;   /* This function is assuming non-Unicode cfg. */
#if _USE_LFN
 	fileinfo.lfsize = _MAX_LFN * 2 + 1;
	fileinfo.lfname = malloc(fileinfo.lfsize);
#endif		  

    res = f_opendir(&dir,(const TCHAR*)path); //打开一个目录
    if (res == FR_OK) 
	{	
		printf("\r\n"); 
		while(1)
		{
	        res = f_readdir(&dir, &fileinfo);                   //读取目录下的一个文件
	        if (res != FR_OK || fileinfo.fname[0] == 0) break;  //错误了/到末尾了,退出
	        //if (fileinfo.fname[0] == '.') continue;             //忽略上级目录
#if _USE_LFN
        	fn = *fileinfo.lfname ? fileinfo.lfname : fileinfo.fname;
#else							   
        	fn = fileinfo.fname;
#endif	                                              /* It is a file. */
			printf("%s/", path);//打印路径	
			printf("%s\r\n",  fn);//打印文件名	  
		} 
		printf("\r\n"); 
    }	 
#if _USE_LFN
	free(fileinfo.lfname);
#endif	 
    return res;	  
}

int do_ls (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{	
	FATFS *fs;
	FRESULT Res;	
	fs = malloc (sizeof (FATFS));
	if (fs == NULL){
		my_println ("malloc (sizeof (FATFS)) failed!");
		return -1;
	}
	switch (argc){
		case 1:
			Res = f_mount(fs, "0:" , 0);
			if (Res != FR_OK){
				my_println ("f_mount disk \"0:\" failed!");
			}else{
				mf_scan_files ("0:");
			}
			break;
		case 2:
			if (strcmp (argv[1], "sd") == 0){
				Res = f_mount(fs, "0:" , 0);
				if (Res != FR_OK){
					my_println ("f_mount disk \"0:\" failed!");
				}else{
					mf_scan_files ("0:");
				}
				break;
			}else if (strcmp (argv[1], "flash") == 0){
				Res = f_mount(fs, "1:" , 0);
				if (Res != FR_OK){
					my_println ("f_mount disk \"1:\" failed!");
				}else{
					mf_scan_files ("1:");
				}
				break;
			}else{
				my_println ("disk must be sd or flash");
			}
			cmd_usage (cmdtp);
			break;
		default: cmd_usage (cmdtp);break;
	}
	if (fs != NULL)
		free (fs);
	return 0;
}
MY_CMD(
	ls,	4,	1,	do_ls,
	"ls - list the disk file on current path\n",
	"ls disk path\n"
);


int do_view (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{	
	u16 i;
	FATFS *fs;
	FIL *file;
	char * view_buf;
	FRESULT Res;	
	
	fs = malloc (sizeof (FATFS));
	file = malloc (sizeof (FIL));
	view_buf = malloc (sizeof (64));
	
	if (fs == NULL || file == NULL || view_buf == NULL){
		my_println ("malloc (sizeof (FATFS)) failed!");
		return -1;
	}
	switch (argc){
		case 2:
			{
				Res = f_mount(fs, "0:" , 0);
				if (Res != FR_OK){
					my_println ("f_mount disk \"0:\" failed!");
				}else{
					Res =  f_open(file, argv[1], FA_READ | FA_OPEN_EXISTING);
					if (Res != FR_OK) {
						my_print("Open file %s failed ", argv[1]);	
						my_println("Res = %d", Res);
						break;
					}
					my_println("Read %s:", argv[1]);	 
					for (i = 0; i <32; i++)
					{
						if (f_eof(file))
							break;
						f_gets (view_buf, 64, file);
						my_print("line %05d> %s", i+1, view_buf);	
					}	
					f_close(file);
					my_println();
				}
				break;
			}
		default: cmd_usage (cmdtp);break;
	}
	if (fs != NULL)
		free (fs);
	if (file != NULL)
		free (file);
	if (view_buf != NULL)
		free (view_buf);
	return 0;
}
MY_CMD(
	view,	4,	1,	do_view,
	"view - view the txt file\n",
	"view filename.txt\n"
);

u32 GetLockCode(char *id)
{
	u32 CpuID[3];
	u32 Lock_Code;
	//获取CPU唯一ID
	CpuID[0]=*(vu32*)(0x1ffff7e8);
	CpuID[1]=*(vu32*)(0x1ffff7ec);
	CpuID[2]=*(vu32*)(0x1ffff7f0);
//	//加密算法,很简单的加密算法
	sprintf (id, "%08x%08x%08x", CpuID[0], CpuID[1], CpuID[2]);
	Lock_Code=(CpuID[0]>>1)+(CpuID[1]>>2)+(CpuID[2]>>3);
	return Lock_Code;
}


                                                                












