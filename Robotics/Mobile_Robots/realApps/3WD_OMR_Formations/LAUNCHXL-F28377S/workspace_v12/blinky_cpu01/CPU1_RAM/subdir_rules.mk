################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
F2837xS_CodeStartBranch.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_CodeStartBranch.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="F2837xS_CodeStartBranch.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_DefaultISR.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_DefaultISR.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="F2837xS_DefaultISR.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/source/F2837xS_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="F2837xS_GlobalVariableDefs.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_Gpio.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_Gpio.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="F2837xS_Gpio.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_PieCtrl.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_PieCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="F2837xS_PieCtrl.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_PieVect.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_PieVect.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="F2837xS_PieVect.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_SysCtrl.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_SysCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="F2837xS_SysCtrl.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_usDelay.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_usDelay.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="F2837xS_usDelay.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

blinky_cpu01.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_examples_Cpu1/blinky/cpu01/blinky_cpu01.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --advice:performance=all -g --define=CPU1 --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="blinky_cpu01.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


