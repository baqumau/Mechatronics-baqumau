################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
F2837xS_CodeStartBranch.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_CodeStartBranch.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="F2837xS_CodeStartBranch.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_DefaultISR.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_DefaultISR.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="F2837xS_DefaultISR.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/source/F2837xS_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="F2837xS_GlobalVariableDefs.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_Gpio.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_Gpio.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="F2837xS_Gpio.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_PieCtrl.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_PieCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="F2837xS_PieCtrl.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_PieVect.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_PieVect.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="F2837xS_PieVect.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_SysCtrl.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_SysCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="F2837xS_SysCtrl.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_usDelay.obj: C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/source/F2837xS_usDelay.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="F2837xS_usDelay.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --fp_mode=relaxed --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --define=CPU1 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


