################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./F2837xS_CodeStartBranch.obj" \
"./F2837xS_DefaultISR.obj" \
"./F2837xS_GlobalVariableDefs.obj" \
"./F2837xS_Gpio.obj" \
"./F2837xS_PieCtrl.obj" \
"./F2837xS_PieVect.obj" \
"./F2837xS_SysCtrl.obj" \
"./F2837xS_usDelay.obj" \
"./main.obj" \
"./src/3WD_OMRs_Controllers/3WD_OMRs_Controllers.obj" \
$(GEN_CMDS__FLAG) \
-llibc.a \
-l"C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/cmd/2837xS_Generic_RAM_lnk.cmd" \
-l"C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/cmd/F2837xS_Headers_nonBIOS.cmd" \
-l"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/lib/rts2800_fpu32.lib" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include src/3WD_OMRs_Controllers/subdir_vars.mk
-include subdir_rules.mk
-include src/3WD_OMRs_Controllers/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
Control_v002.out 

EXE_OUTPUTS__QUOTED += \
"Control_v002.out" 


# All Target
all: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "Control_v002.out"

# Tool invocations
Control_v002.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off -z -m"Control_v002.map" --heap_size=0x400 --stack_size=0x200 --warn_sections -i"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/lib" -i"C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/cmd" -i"C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/cmd" -i"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --reread_libs --display_error_number --diag_wrap=off --xml_link_info="Control_v002_linkInfo.xml" --entry_point=_c_int00 --rom_model -o "Control_v002.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "F2837xS_CodeStartBranch.obj" "F2837xS_DefaultISR.obj" "F2837xS_GlobalVariableDefs.obj" "F2837xS_Gpio.obj" "F2837xS_PieCtrl.obj" "F2837xS_PieVect.obj" "F2837xS_SysCtrl.obj" "F2837xS_usDelay.obj" "main.obj" "src\3WD_OMRs_Controllers\3WD_OMRs_Controllers.obj" 
	-$(RM) "F2837xS_DefaultISR.d" "F2837xS_GlobalVariableDefs.d" "F2837xS_Gpio.d" "F2837xS_PieCtrl.d" "F2837xS_PieVect.d" "F2837xS_SysCtrl.d" "main.d" "src\3WD_OMRs_Controllers\3WD_OMRs_Controllers.d" 
	-$(RM) "src\3WD_OMRs_Controllers\3WD_OMRs_Controllers.d" 
	-$(RM) "F2837xS_CodeStartBranch.d" "F2837xS_usDelay.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

