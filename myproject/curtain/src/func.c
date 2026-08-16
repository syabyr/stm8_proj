#include "common.h"
#include "func.h"
#include "getdiff.h"
/******************************************/
//闪烁模式
bool blink_left = FALSE;
bool blink_right = FALSE;

//加热模式
bool is_heat_up = FALSE;
bool is_heat_all = FALSE;


void set_blink_left(bool value)
{
	blink_left=value;
}
void set_blink_right(bool value)
{
	blink_right=value;
}

bool get_blink_left(void)
{
	return blink_left;
}
bool get_blink_right(void)
{
	return blink_right;
}
bool is_blink_mode(void)
{
	return (blink_left)|(blink_right);
}

/******************************************/
//数码管上显示的数字
uint16_t disp_left = 70;
uint16_t disp_right = 70;

void set_disp_left(uint16_t value)
{
	disp_left = value;
}
void set_disp_right(uint16_t value)
{
	disp_right = value;
}
uint16_t get_disp_left(void)
{
	return disp_left;
}
uint16_t get_disp_right(void)
{
	return disp_right;
}

/******************************************/
//fast模式为长按按键时,设置数据快速变化的模式
bool key3_fast_mode = FALSE;
bool key4_fast_mode = FALSE;
bool key5_fast_mode = FALSE;
bool key6_fast_mode = FALSE;

bool is_fast_mode(void)
{
	return key3_fast_mode|key4_fast_mode|key5_fast_mode|key6_fast_mode;
}

/******************************************/

//设置的数据
uint16_t set_value_left = 0;
uint16_t set_value_right = 0;


uint16_t get_setvalue_left(void)
{
	return set_value_left;
}

uint16_t get_setvalue_right(void)
{
	return set_value_left;
}


uint16_t key3_timer_div = 0;
uint16_t key4_timer_div = 0;
uint16_t key5_timer_div = 0;
uint16_t key6_timer_div = 0;

//闪烁模式自增变量,3S后清零,
uint16_t blink_left_timeout = 0;
uint16_t blink_right_timeout = 0;

//按键是否被按下
int8_t key3_pressed = 0;
int8_t key4_pressed = 0;
int8_t key5_pressed = 0;
int8_t key6_pressed = 0;

int8_t keyall_pressed = 0;
int8_t keyup_pressed = 0;


bool is_all_on = FALSE;	//总开关标志位,由按键控制
bool is_up_on = FALSE;	//上部开关标志位,由按键控制

bool get_all_status(void)
{
	return is_all_on;
}

bool get_up_status(void)
{
	return is_up_on;
}


//是否需要写EEPROM
bool write_eeprom = FALSE;

bool get_eeprom_flag(void)
{
	return write_eeprom;
}
void set_eeprom_flag(bool value)
{
	write_eeprom = value;
}

//错误码
//按位处理
int8_t error_left=0;
int8_t error_right=0;


void key_scan(void)
{
	if(MY_GPIO_ReadInputPin(GPIOB, GPIO_PIN_7) != RESET)     //KEYALL
	{
		//led_all_heat_on();//debug
		//KEYALL PRESSED
		if(keyall_pressed == FALSE)
		{
			keyall_pressed = TRUE;
			if(TRUE == is_all_on)
			{
				is_all_on = FALSE;
				is_up_on = FALSE;
			}
			else
			{
				is_all_on = TRUE;
				is_up_on = TRUE;
			}
		}
		keyall_pressed = TRUE;
	}
	else
	{
		 //led_all_heat_off(); //debug
		keyall_pressed = FALSE;
	}

	if(MY_GPIO_ReadInputPin(GPIOE, GPIO_PIN_5) == RESET)     //KEYUP
	{
		//led_up_heat_on();//debug
		//KEYUP PRESSED
		if(keyup_pressed == FALSE)
		{
			keyup_pressed = TRUE;
			if(TRUE == is_up_on)
			{
				is_up_on = FALSE;
			}
			else
			{
				if(TRUE == is_all_on)
				{
					is_up_on = TRUE;
				}
				else
				{
					is_up_on = FALSE;
				}
			}
		}
		keyup_pressed = TRUE;
	}
	else
	{
		//led_up_heat_off();//debug
		keyup_pressed = FALSE;
	}

	if(MY_GPIO_ReadInputPin(GPIOB, GPIO_PIN_5) == RESET)     //KEY3
	{
		//KEY3 PRESSED
		if(key3_pressed == KEY_PRESS)
		{
			//闪烁模式下才可以调整设定值
			if(get_blink_left() == TRUE)
			{
				set_value_left--;
				//数据变化时需要写eeprom
				write_eeprom = TRUE;
			}
			//快速模式下,不闪烁,不然看不清设定数据
			if(key3_fast_mode == FALSE)
			{
				set_blink_left(TRUE);   //setting left
			}
			//清除按键持续时间计数器
			key3_timer_div = 0;
		}
		key3_pressed ++;
	}
	else
	{
		key3_pressed = 0;
	}
  
/*********************************************************************/
  
	if(MY_GPIO_ReadInputPin(GPIOB, GPIO_PIN_4) == RESET)     //KEY4
	{
		//KEY4 PRESSED
		if(key4_pressed == KEY_PRESS)
		{
			if(get_blink_left() == TRUE)
			{
				set_value_left++;
				write_eeprom = TRUE;
			}
			if(key4_fast_mode == FALSE)
			{
				set_blink_left(TRUE);   //setting left
			}
			key4_timer_div = 0;
		}
		key4_pressed ++;
	}
	else
	{
		key4_pressed = 0; 
	}
  
/*********************************************************************/
 #ifdef STM8S003
	if(MY_GPIO_ReadInputPin(GPIOF, GPIO_PIN_4) != RESET)     //KEY5
#else
	if(MY_GPIO_ReadInputPin(GPIOB, GPIO_PIN_3) == RESET)     //KEY5
#endif
	{
		//KEY5 PRESSED
		if(key5_pressed == KEY_PRESS)
		{
			if(get_blink_right() == TRUE)
			{
				set_value_right--;
				write_eeprom = TRUE;
			}
			if(key5_fast_mode == FALSE)
			{
				set_blink_right(TRUE);   //setting left
			}
			
			key5_timer_div = 0;
		}
		key5_pressed ++;
	}
	else
	{
		key5_pressed = 0;
	}
/*********************************************************************/
#ifdef STM8S003
	if(MY_GPIO_ReadInputPin(GPIOA, GPIO_PIN_3) != RESET)     //KEY6
#else
	if(MY_GPIO_ReadInputPin(GPIOB, GPIO_PIN_2) == RESET)     //KEY6
#endif
	{
		//KEY6 PRESSED
		if(key6_pressed == KEY_PRESS)
		{
			if(get_blink_right() == TRUE)
			{
				set_value_right++;
				write_eeprom = TRUE;
			}
			if(key6_fast_mode == FALSE)
			{
				set_blink_right(TRUE);   //setting left
			}
			
			key6_timer_div = 0;
		}
		key6_pressed ++;
	}
	else
	{
		key6_pressed = 0;
	}

	set_value_correct();
}

void timer4_key_handler(void)
{
	static uint16_t set_value_left_temp = 0;
	static uint16_t set_value_right_temp = 0;
/*********************************************************************/
	if(key3_pressed)
	{
		key3_timer_div++;
		//快速按键模式
		if(key3_timer_div>1000 && ( (key3_timer_div&127) == 0))
		{
			set_value_left-=2;
			blink_left_timeout=0;
			key3_fast_mode = TRUE;
			set_blink_left(FALSE);
			write_eeprom = TRUE;
		}
		set_value_correct();
		set_disp_left(set_value_left);
	}
	else
	{
		if(key3_fast_mode == TRUE)
		{
			key3_fast_mode = FALSE;
			set_blink_left(TRUE);
		}
	}

	if(key4_pressed)
	{
		key4_timer_div++;
		if(key4_timer_div>1000 && ( (key4_timer_div&127) == 0))
		{
			set_value_left+=2;
			blink_left_timeout=0;
			key4_fast_mode = TRUE;
			set_blink_left(FALSE);
			write_eeprom = TRUE;
		}
		set_value_correct();
		set_disp_left(set_value_left);
	}
	else
	{
		if(key4_fast_mode == TRUE)
		{
			key4_fast_mode = FALSE;
			set_blink_left(TRUE);
		}
	}

	if(key5_pressed)
	{
		key5_timer_div++;
		if(key5_timer_div>1000 && ( (key5_timer_div&127) == 0))
		{
			set_value_right-=2;
			blink_right_timeout=0;
			key5_fast_mode = TRUE;
			set_blink_right(FALSE);
			write_eeprom = TRUE;
		}
		set_value_correct();
		set_disp_right(set_value_right);
	}
	else
	{
		if(key5_fast_mode == TRUE)
		{
			key5_fast_mode = FALSE;
			set_blink_right(TRUE);
		}
	}

	if(key6_pressed)
	{
		key6_timer_div++;
		if(key6_timer_div>1000 && ( (key6_timer_div&127) == 0))
		{
			set_value_right+=2;
			blink_right_timeout=0;
			key6_fast_mode = TRUE;
			set_blink_right(FALSE);
			write_eeprom = TRUE;
		}
		set_value_correct();
		set_disp_right(set_value_right);
	}
	else
	{
		if(key6_fast_mode == TRUE)
		{
			key6_fast_mode = FALSE;
			set_blink_right(TRUE);
		}
	}
/*********************************************************************/  
	if(get_blink_left() == TRUE)
	{
		blink_left_timeout++;
		if(blink_left_timeout>3000)
		{
			blink_left_timeout = 0;
			if(set_value_left_temp == set_value_left)
			{ 
				set_blink_left(FALSE);
			}
			set_value_left_temp = set_value_left;  
		}
	}
/*********************************************************************/  
	if(get_blink_right() == TRUE)
	{
		blink_right_timeout++;
		if(blink_right_timeout>3000)
		{
			blink_right_timeout = 0;
			if(set_value_right_temp == set_value_right)
			{ 
				set_blink_right(FALSE);
			}
			set_value_right_temp = set_value_right;  
		}
	}  
}

void set_value_correct(void)
{
	if(set_value_left>300)
		set_value_left = 300;
	else if(set_value_left<70)
		set_value_left = 70;

	if(set_value_right>300)
		set_value_right = 300;	
	else if(set_value_right<70)
		set_value_right = 70;
}
/**************************************************************/



void timer4_num_handler(void)
{
	static uint8_t scan=0;					//扫描循环变量,在6个数码段之间循环
	static uint16_t blink_timer_div=0;		//闪烁循环变量,闪烁周期1s,0.5s亮,0.5s灭

	scan++;
	scan%=6;
	blink_timer_div++;
	blink_timer_div%=1000;

	GPIOC->ODR = 0xfc|(GPIOC->ODR& 0x03);
	//在后半个闪烁周期及闪烁标志位打开时,不显示(闪烁)
	if(blink_timer_div<500 || !get_blink_right())
	{
		if(error_right)
		{
			switch(scan)
			{
			case 0:
				display_num(10);
				GPIOC->ODR = 0xF8|(GPIOC->ODR& 0x03);	//~0x04+0x03
				if(error_right|0x04)
				{
					//display_num(3);
				}
				break;
			case 1:
				display_num(10);
				GPIOC->ODR = 0xF4|(GPIOC->ODR& 0x03);//~0x08+0x03
				if(error_right|0x01)
				{
					display_num(0);
				}
				if(error_right|0x02)
				{
					display_num(1);
				}
				break;
			case 2:
				display_num(10);
				GPIOC->ODR = 0xEC|(GPIOC->ODR& 0x03);//~0x10+0x03
				display_num(11);
				break;
			default:
				break;
			}
		}
		else
		{
			switch(scan)
			{
			case 0:
				display_num(10);
				GPIOC->ODR = 0xF8|(GPIOC->ODR& 0x03);	//~0x04+0x03
				display_num(get_disp_right()%10);
				break;
			case 1:
				display_num(10);
				GPIOC->ODR = 0xF4|(GPIOC->ODR& 0x03);//~0x08+0x03
				display_num((get_disp_right()/10)%10);
				break;
			case 2:
				display_num(10);
				GPIOC->ODR = 0xEC|(GPIOC->ODR& 0x03);//~0x10+0x03
				display_num(get_disp_right()/100==0?10:get_disp_right()/100);
				break;
			default:
				break;
			}
		}
		
	}
  	//在后半个闪烁周期及闪烁标志位打开时,不显示(闪烁)
	if(blink_timer_div<500 || !get_blink_left())
	{
		if(error_left)
		{
			switch(scan)
			{
			case 3:
				display_num(10);
				GPIOC->ODR = 0xDC|(GPIOC->ODR& 0x03); //~0x20+0x03
				if(error_left|0x04)
				{
					//display_num(3);
				}
				break;
			case 4:
				display_num(10);
				GPIOC->ODR = 0xBC|(GPIOC->ODR& 0x03);//~0x40+0x03
				if(error_left|0x01)
				{
					display_num(0);
				}
				if(error_left|0x02)
				{
					display_num(1);
				}
				break;
			case 5:
				display_num(10);
				GPIOC->ODR = 0x7C|(GPIOC->ODR& 0x03); //~0x80+0x03
				display_num(11);
				break;
			default:
				break;
			}
		}
		else
		{
			switch(scan)
			{
			case 3:
				display_num(10);
				GPIOC->ODR = 0xDC|(GPIOC->ODR& 0x03); //~0x20+0x03
				display_num(get_disp_left()%10);
				break;
			case 4:
				display_num(10);
				GPIOC->ODR = 0xBC|(GPIOC->ODR& 0x03);//~0x40+0x03
				display_num((get_disp_left()/10)%10);
				break;
			case 5:
				display_num(10);
				GPIOC->ODR = 0x7C|(GPIOC->ODR& 0x03); //~0x80+0x03
				display_num(get_disp_left()/100==0?10:get_disp_left()/100);
				break;
			default:
				break;
			}
		}
	}
}



void get_eeprom_value(void)
{
	uint8_t value_left_low=MY_FLASH_ReadByte(0x004010);
	uint8_t value_left_high=MY_FLASH_ReadByte(0x004011);
	uint8_t value_right_low=MY_FLASH_ReadByte(0x004012);
	uint8_t value_right_high=MY_FLASH_ReadByte(0x004013);
	
	uint16_t value_left=value_left_high*256+value_left_low;
	uint16_t value_right=value_right_high*256+value_right_low;
	set_value_left=value_left;
	set_value_right=value_right;
	set_disp_left(value_left);
	set_disp_right(value_right);
}

void set_eeprom_value(void)
{

	FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
  FLASH->CR1 |= (uint8_t)FLASH_PROGRAMTIME_STANDARD;
	//FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
    /* Unlock Data memory */
    	//FLASH_Unlock(FLASH_MEMTYPE_DATA);
	FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
	FLASH->DUKR = FLASH_RASS_KEY1;
    	if(set_value_left>255)
    	{
    		MY_FLASH_ProgramByte(0x004010, set_value_left-256);
		MY_FLASH_ProgramByte(0x004011, 1);
    	}
    	else
    	{
    		MY_FLASH_ProgramByte(0x004010, set_value_left);
		MY_FLASH_ProgramByte(0x004011, 0);
    	}
    	if(set_value_right>255)
    	{
    		MY_FLASH_ProgramByte(0x004012, set_value_right-256);
		MY_FLASH_ProgramByte(0x004013, 1);
    	}
    	else
    	{
    		MY_FLASH_ProgramByte(0x004012, set_value_right);
		MY_FLASH_ProgramByte(0x004013, 0);
    	}

	//FLASH_Lock(FLASH_MEMTYPE_DATA);
	FLASH->IAPSR &= (uint8_t)FLASH_MEMTYPE_DATA;
}





static uint8_t adc_en = 0;

static uint16_t adc_value_left = 0;
static uint16_t adc_value_right = 0;



void timer4_adc_handler(void)   //timer enables adc_en flag
{
	static uint8_t adc_timer_div = 0;
	adc_timer_div++;
	if(adc_timer_div>=20)
	{
		adc_timer_div = 0;
		adc_en = 1;
	}
}

void adc_get_value(void)        //This function runs in main
{
	static uint8_t adc_count = 0;
	static uint16_t adc_value_temp = 0;
	if(adc_en)
	{
		adc_en = 0;
		adc_count++;
    
		if(adc_count <17)
		{
			MY_ADC1_StartConversion();
			while(RESET == MY_ADC1_GetFlagStatus(ADC1_FLAG_EOC));
			MY_ADC1_ClearFlag(ADC1_FLAG_EOC);
			adc_value_temp += MY_ADC1_GetConversionValue();
		}
		else if(adc_count == 17)
		{
			adc_value_left = adc_value_temp >> 4;  
			adc_value_temp = 0;
			//显示
			if(!is_blink_mode())
			{
				set_disp_left(GetTemp(adc_value_left));
			}
			if(adc_value_left > 1010)
			{
				set_left_errorcode(1);
			}
			else if(adc_value_left <14)
			{
				set_left_errorcode(2);
			}
			else
			{
				clear_left_errorcode(1);
				clear_left_errorcode(2);
				if(adc_value_left > 991)
				{
					check_up_heat(1);
				}
				else
				{
					check_up_heat(0);
				}
			}
			MY_ADC1_ConversionConfig(ADC1_CONVERSIONMODE_SINGLE, ADC1_CHANNEL_1, ADC1_ALIGN_RIGHT);
		}
		else if(adc_count <34)
		{
			MY_ADC1_StartConversion();
			while(RESET == MY_ADC1_GetFlagStatus(ADC1_FLAG_EOC));
			MY_ADC1_ClearFlag(ADC1_FLAG_EOC);
			adc_value_temp += MY_ADC1_GetConversionValue();   
		}
		else
		{
			adc_value_right = adc_value_temp >> 4;  
			adc_count = 0;
			adc_value_temp = 0;
			//显示
			if(!is_blink_mode())
			{
				set_disp_right(GetTemp(adc_value_right));
				if(adc_value_left > 1000)
			{
				set_right_errorcode(1);
			}
			else if(adc_value_left <24)
			{
				set_right_errorcode(2);
			}
			else
			{
				clear_right_errorcode(1);
				clear_right_errorcode(2);
				if(adc_value_right > 991)
				{
					check_all_heat(1);
				}
				else
				{
					check_all_heat(0);
				}
			}
			}
			MY_ADC1_ConversionConfig(ADC1_CONVERSIONMODE_SINGLE, ADC1_CHANNEL_0, ADC1_ALIGN_RIGHT);
		}
	}
}


void check_up_heat(bool status)
{
	static uint16_t counter_up=0;
	if(status)
	{
		counter_up++;
		if(counter_up >16384)
		{
			set_left_errorcode(0x04);
		}
	}
	else
	{
		counter_up = 0;
		clear_left_errorcode(0x04);
	}

}


void check_all_heat(bool status)
{
	static uint16_t counter_all=0;
	if(status)
	{
		counter_all++;
		if(counter_all >16384)
		{
			set_right_errorcode(0x04);
		}
	}
	else
	{
		counter_all = 0;
		clear_right_errorcode(0x04);
	}
}

///////////////////////////////////////
//LED控制

//打开上部加热指示灯
void led_up_heat_on(void)
{
	GPIOC->ODR|=GPIO_PIN_1;
}

//关闭上部加热指示灯
void led_up_heat_off(void)
{
	GPIOC->ODR&=~GPIO_PIN_1;
}

//打开上部保温指示灯
void led_up_warm_on(void)
{
	GPIOB->ODR|=GPIO_PIN_6;
}

//关闭上部保温指示灯
void led_up_warm_off(void)
{
	GPIOB->ODR&=~GPIO_PIN_6;
}

//打开全部加热指示灯
void led_all_heat_on(void)
{
	GPIOA->ODR|=GPIO_PIN_1;
}
//关闭全部加热指示灯
void led_all_heat_off(void)
{
	GPIOA->ODR&=~GPIO_PIN_1;
}

//打开全部保温指示灯
void led_all_warm_on(void)
{
	GPIOD->ODR|=GPIO_PIN_7;
}

//关不全部保温指示灯
void led_all_warm_off(void)
{
	GPIOD->ODR&=~GPIO_PIN_7;
}


///////////////////////////////////////
//继电器控制

//打开上部加热
void heat_up_on(void)
{
	GPIOB->ODR|=GPIO_PIN_2;
}
//关闭上部加热
void heat_up_off(void)
{
	GPIOB->ODR&=~GPIO_PIN_2;
}
//打开下部加热
void heat_all_on(void)
{
	GPIOB->ODR|=GPIO_PIN_3;
}
//关闭下部加热
void heat_all_off(void)
{
	GPIOB->ODR&=~GPIO_PIN_3;
}


//开始加热上部
void start_heat_up(void)
{
	is_heat_up = TRUE;
	led_up_warm_off();
	led_up_heat_on();
	heat_up_on();
}

//停止加热上部
void stop_heat_up(void)
{
	is_heat_up = FALSE;
	led_up_heat_off();
	led_up_warm_on();
	heat_up_off();
}

//开始加热下部
void start_heat_all(void)
{
	is_heat_all = TRUE;
	led_all_warm_off();
	led_all_heat_on();
	heat_all_on();
}

//停止加热下部
void stop_heat_all(void)
{
	is_heat_all = FALSE;
	led_all_heat_off();
	led_all_warm_on();
	heat_all_off();
}

//关闭上部加热器
void halt_up(void)
{
	is_heat_up = FALSE;
	led_up_heat_off();
	led_up_warm_off();
	heat_up_off();
}

//关闭全部加热器
void halt_all(void)
{
	is_heat_all = FALSE;
	halt_up();
	led_all_heat_off();
	led_all_warm_off();
	heat_all_off();
}

void set_left_errorcode(int8_t n)
{
	if(n|0x04)
	{
		error_left|=0x04;
	}
	if(n|0x01)
	{
		error_left|=0x01;
		error_left&=~0x02;
	}
	else if(n|0x02)
	{
		error_left|=0x02;
		error_left&=~0x01;
	}


}
void set_right_errorcode(int8_t n)
{
	if(n|0x04)
	{
		error_right|=0x04;
	}
	if(n|0x01)
	{
		error_right|=0x01;
		error_right&=~0x02;
	}
	else if(n|0x02)
	{
		error_right|=0x02;
		error_right&=~0x01;
	}
}

void clear_left_errorcode(int8_t n)
{
	if(n|0x04)
	{
		error_left &= ~0x04;
	}
	if(n|0x01)
	{
		error_left|=0x01;
		error_left&=~0x02;
	}
	else if(n|0x02)
	{
		error_left|=0x02;
		error_left&=~0x01;
	}
}
void clear_right_errorcode(int8_t n)
{
	if(n|0x04)
	{
		error_right &= ~0x04;
	}
	if(n|0x01)
	{
		error_right|=0x01;
		error_right&=~0x02;
	}
	else if(n|0x02)
	{
		error_right|=0x02;
		error_right&=~0x01;
	}
}