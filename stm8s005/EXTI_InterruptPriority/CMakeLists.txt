cmake_minimum_required(VERSION 3.2)

set(CMAKE_C_COMPILER sdcc)
set(PROJECT blink)
project(${PROJECT} C)


set(STD_LIB_DIR /Users/mybays/develop/stm8/STM8S_StdPeriph_Lib/Libraries/STM8S_StdPeriph_Driver)


set(DEVICE STM8S005)


include_directories(
		${STD_LIB_DIR}/inc
		./src
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_SOURCE_DIR}/StdPeriph
        ${STM8_StdPeriph_INCLUDE_DIR}
)

set(CMAKE_C_OUTPUT_EXTENSION ".rel")

set(CMAKE_SYSTEM_NAME Generic) # No linux target etc
# Prevent default configuration
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")
project(STM8Blink C)
SET(CMAKE_C_FLAGS "-mstm8 --std-c99 -D${DEVICE}")

set(C_FILES src/main.c
			src/stm8s_it.c)

set(LIB_FILES	${STD_LIB_DIR}/src/stm8s_tim1.c
				${STD_LIB_DIR}/src/stm8s_gpio.c
				${STD_LIB_DIR}/src/stm8s_exti.c
				
				)

add_executable(${PROJECT} ${C_FILES} ${LIB_FILES})


# Flash targets
#add_custom_target(flash ALL COMMAND stm8flash -c stlink -p stm8s105c6 -w main.ihx)