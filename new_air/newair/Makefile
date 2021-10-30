#######
# makefile for STM8S_StdPeriph_Lib and SDCC compiler
#
# Customized by MightyPork 1/2017
#
# usage:
#   1. if SDCC not in PATH set path -> CC_ROOT
#   2. set correct STM8 device -> DEVICE
#   3. set project paths -> PRJ_ROOT, PRJ_SRC_DIR, PRJ_INC_DIR
#   4. set SPL root path -> SPL_ROOT
#   5. include required SPL modules -> SPL_SOURCE
#
#######

# STM8 device (default is STM8 discovery board)
DEVICE=STM8S005
DEVICE_FLASH=stm8s005k6

PROJECT_NAME=newair

# trap handling requires SDCC >=v3.4.3
SKIP_TRAPS = 0

# set compiler path & parameters 
CC_ROOT =
CC      = sdcc
CFLAGS  = -mstm8 -lstm8 --opt-code-size

# required for some examples for STM8S EVAL board
#CFLAGS += -DUSE_STM8_128_EVAL

# set output folder and target name
OUTPUT_DIR = ./$(DEVICE)
TARGET     = $(OUTPUT_DIR)/$(PROJECT_NAME).hex

# set project folder and files (all *.c)
PRJ_ROOT    = .
PRJ_SRC_DIR = $(PRJ_ROOT)/src
PRJ_INC_DIR = $(PRJ_ROOT)/src
# all project sources included by default
PRJ_SOURCE  = $(notdir $(wildcard $(PRJ_SRC_DIR)/*.c))
PRJ_OBJECTS := $(addprefix $(OUTPUT_DIR)/, $(PRJ_SOURCE:.c=.c.rel))


TOP_DIR=../../
STDPERIPH_DIR = $(TOP_DIR)/StdPeriph_Driver/STM8S_StdPeriph_Driver/


# set SPL paths
SPL_SRC_DIR = $(STDPERIPH_DIR)/src/
SPL_INC_DIR = $(STDPERIPH_DIR)/inc/
# add all library sources used here
SPL_SOURCE  = stm8s_uart2.c
SPL_SOURCE  += stm8s_clk.c
SPL_SOURCE  += stm8s_tim1.c
SPL_SOURCE  += stm8s_tim3.c
SPL_SOURCE  += stm8s_gpio.c
SPL_SOURCE  += stm8s_exti.c


SPL_OBJECTS := $(addprefix $(OUTPUT_DIR)/, $(SPL_SOURCE:.c=.c.rel))

# collect all include folders
INCLUDE = -I$(PRJ_SRC_DIR) -I$(SPL_INC_DIR) 

# collect all source directories
VPATH=$(PRJ_SRC_DIR):$(SPL_SRC_DIR)

.PHONY: clean

all: $(OUTPUT_DIR) $(TARGET)

$(OUTPUT_DIR):
	mkdir $@

$(OUTPUT_DIR)/%.c.rel: %.c
	$(CC) $(CFLAGS) -D$(DEVICE) $(INCLUDE) -DSKIP_TRAPS=$(SKIP_TRAPS) -D${DEVICE}=1 -c $?

$(OUTPUT_DIR)/%.c.rel: %.c
	$(CC) $(CFLAGS) -D$(DEVICE) $(INCLUDE) -DSKIP_TRAPS=$(SKIP_TRAPS) -D${DEVICE}=1 -c $? -o $@

$(TARGET): $(PRJ_OBJECTS) $(SPL_OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $^

flash: $(OUTPUT_DIR) $(TARGET)
	stm8flash -c stlinkv2 -p $(DEVICE_FLASH) -s flash -w $(TARGET)

bin: $(OUTPUT_DIR) $(TARGET)
	hex2bin $(TARGET)

clean:
	rm -fr $(OUTPUT_DIR)/
