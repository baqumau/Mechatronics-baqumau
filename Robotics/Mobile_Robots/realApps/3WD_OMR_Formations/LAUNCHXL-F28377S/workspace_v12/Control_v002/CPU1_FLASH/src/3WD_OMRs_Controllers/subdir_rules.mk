################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
src/3WD_OMRs_Controllers/%.obj: ../src/3WD_OMRs_Controllers/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --advice:performance=all -g --undefine=CPU1 --undefine=_FLASH --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="src/3WD_OMRs_Controllers/$(basename $(<F)).d_raw" --obj_directory="src/3WD_OMRs_Controllers" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

src/3WD_OMRs_Controllers/%.obj: ../src/3WD_OMRs_Controllers/%.cpp $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --cla_support=cla1 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/Users/mbaquero/Downloads/Argentina/ITBA/Doctorate Work/Experiments/Omnidirectional Robots/LAUNCHXL-F28377S/workspace_v12/Control_v002" --include_path="C:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xs/driverlib" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_common/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v130/F2837xS_headers/include" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --advice:performance=all -g --undefine=CPU1 --undefine=_FLASH --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="src/3WD_OMRs_Controllers/$(basename $(<F)).d_raw" --obj_directory="src/3WD_OMRs_Controllers" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


