#include "stm8s_conf.h"

#ifdef USE_FULL_ASSERT
void assert_failed(uint8_t* file, uint32_t line)
{ 
  (void)file;
  (void)line;
  //Infinite loop 
  while (1)
  {
  }
}
#endif