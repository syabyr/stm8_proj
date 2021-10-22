cmake_minimum_required(VERSION 3.2)

set(PROJECT_NAME blink)



set(STD_LIB_DIR /Users/mybays/develop/stm8/STM8S_StdPeriph_Lib/Libraries/STM8S_StdPeriph_Driver)


set(DEVICE STM8S005)
set(DEVICE_FLASH stm8s005k6)


set(SKIP_TRAPS 0)

include_directories(
		${STD_LIB_DIR}/inc
		./src
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_SOURCE_DIR}/StdPeriph
        ${STM8_StdPeriph_INCLUDE_DIR}
)

set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic) # No linux target etc
# Prevent default configuration
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")
project(${PROJECT_NAME} C)
SET(CMAKE_C_FLAGS "-mstm8 -lstm8 --opt-code-size -DSKIP_TRAPS=$(SKIP_TRAPS) -D${DEVICE}=1")

set(C_FILES src/main.c
			src/assert.c
			src/stm8s_it.c)

set(LIB_FILES	${STD_LIB_DIR}/src/stm8s_tim1.c
				${STD_LIB_DIR}/src/stm8s_gpio.c
				${STD_LIB_DIR}/src/stm8s_exti.c
				)

add_executable(${PROJECT_NAME} ${C_FILES} ${LIB_FILES})


# bin
add_custom_target(bin
	COMMAND hex2bin ${PROJECT_NAME}.ihx
        DEPENDS ${PROJECT_NAME}
	)

# Flash targets
add_custom_target(flash
	COMMAND stm8flash -c stlinkv2 -p ${DEVICE_FLASH} -s flash -w ${PROJECT_NAME}.ihx
        DEPENDS ${PROJECT_NAME}
	)
