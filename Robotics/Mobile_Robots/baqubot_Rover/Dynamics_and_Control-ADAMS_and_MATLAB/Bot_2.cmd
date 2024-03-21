!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!--------------------------- Model Specific Colors ----------------------------!
!
!
if condition = (! db_exists(".colors.COLOR_R000G105B229"))
!
color create  &
   color_name = .colors.COLOR_R000G105B229  &
   red_component = 0.0  &
   blue_component = 0.8980392218  &
   green_component = 0.413098067
!
else 
!
color modify  &
   color_name = .colors.COLOR_R000G105B229  &
   red_component = 0.0  &
   blue_component = 0.8980392218  &
   green_component = 0.413098067
!
end 
!
if condition = (! db_exists(".colors.COLOR_R169G175B178"))
!
color create  &
   color_name = .colors.COLOR_R169G175B178  &
   red_component = 0.6662650704  &
   blue_component = 0.6999999881  &
   green_component = 0.6873493791
!
else 
!
color modify  &
   color_name = .colors.COLOR_R169G175B178  &
   red_component = 0.6662650704  &
   blue_component = 0.6999999881  &
   green_component = 0.6873493791
!
end 
!
if condition = (! db_exists(".colors.COLOR_R051G051B051"))
!
color create  &
   color_name = .colors.COLOR_R051G051B051  &
   red_component = 0.200000003  &
   blue_component = 0.200000003  &
   green_component = 0.200000003
!
else 
!
color modify  &
   color_name = .colors.COLOR_R051G051B051  &
   red_component = 0.200000003  &
   blue_component = 0.200000003  &
   green_component = 0.200000003
!
end 
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 50.0  &
   spacing_for_grid = 1000.0
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = baqubot_2
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .baqubot_2.Trw  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_2.Tlw  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_2.Wrw  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_2.Wlw  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_2.Alpha  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_2.X_Dist  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_2.Y_Dist  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .baqubot_2.Inputs  &
   adams_id = 1  &
   variable_name =  &
      .baqubot_2.Trw,  &
      .baqubot_2.Tlw
!
data_element create plant output  &
   plant_output_name = .baqubot_2.Outputs  &
   adams_id = 1  &
   variable_name =  &
      .baqubot_2.Wrw,  &
      .baqubot_2.Wlw,  &
      .baqubot_2.Alpha,  &
      .baqubot_2.X_Dist,  &
      .baqubot_2.Y_Dist
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .baqubot_2.steel  &
   adams_id = 1  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_2.ground.MARKER_1  &
   adams_id = 1  &
   location = -2500.0, -100.0, -55.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_2.ground  &
   material_type = .baqubot_2.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .baqubot_2.ground.SOLID0  &
   adams_id = 7  &
   corner_marker = .baqubot_2.ground.MARKER_1  &
   diag_corner_coords = 5000.0, 5000.0, 5.0
!
geometry attributes  &
   geometry_name = .baqubot_2.ground.SOLID0  &
   color = Brown
!
part attributes  &
   part_name = .baqubot_2.ground  &
   name_visibility = off
!
!---------------------------------- Chassis -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_2.Chassis  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.Chassis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_2.Chassis.PSMAR  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_2.Chassis.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_2.Chassis.cm  &
   adams_id = 14  &
   location = -1.1107491159E-010, 19.6765466914, -12.96762156  &
   orientation = 180.0000000319d, 78.4246146196d, 89.9999999934d
!
marker create  &
   marker_name = .baqubot_2.Chassis.MARKER_2  &
   adams_id = 2  &
   location = 78.0001339486, -5.2788829476E-004, 2.5060167027E-004  &
   orientation = 269.9982507719d, 90.000830402d, 179.9999999746d
!
marker create  &
   marker_name = .baqubot_2.Chassis.MARKER_4  &
   adams_id = 4  &
   location = -78.0001339486, 4.2211296167E-004, 4.0408897104E-004  &
   orientation = 270.0013999158d, 90.0013384605d, 180.0000000327d
!
marker create  &
   marker_name = .baqubot_2.Chassis.MARKER_6  &
   adams_id = 6  &
   location = 0.0, 90.0, -9.36  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .baqubot_2.Chassis.MARKER_27  &
   adams_id = 27  &
   location = 0.0, 0.0, -55.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_2.Chassis  &
   density = 6.19E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_2.Chassis  &
   color = WHITE  &
   transparency = 35
!
!-------------------------------- Right_Wheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_2.Right_Wheel  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.Right_Wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_2.Right_Wheel.PSMAR  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_2.Right_Wheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_2.Right_Wheel.cm  &
   adams_id = 16  &
   location = 78.0001339486, -5.2788829476E-004, 2.5060167027E-004  &
   orientation = 179.5113004301d, 1.2099390136d, 180.4887749251d
!
marker create  &
   marker_name = .baqubot_2.Right_Wheel.MARKER_3  &
   adams_id = 3  &
   location = 78.0001339486, -5.2788829476E-004, 2.5060167027E-004  &
   orientation = 269.9982507719d, 90.000830402d, 179.9999999746d
!
marker create  &
   marker_name = .baqubot_2.Right_Wheel.MARKER_23  &
   adams_id = 23  &
   location = 78.0001339486, -5.2788829476E-004, 2.5060167027E-004  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .baqubot_2.Right_Wheel.MARKER_24  &
   adams_id = 24  &
   location = 78.0001339486, -5.2788829476E-004, 2.5060167027E-004  &
   orientation = 270.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_2.Right_Wheel  &
   density = 1.05E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_2.Right_Wheel  &
   color = COLOR_R000G105B229
!
!--------------------------------- Left_Wheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_2.Left_Wheel  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.Left_Wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_2.Left_Wheel.PSMAR  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_2.Left_Wheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_2.Left_Wheel.cm  &
   adams_id = 18  &
   location = -78.0001339486, 4.2211296167E-004, 4.0408897104E-004  &
   orientation = 359.9691855358d, 19.5653089234d, 2.9219561833E-002d
!
marker create  &
   marker_name = .baqubot_2.Left_Wheel.MARKER_5  &
   adams_id = 5  &
   location = -78.0001339486, 4.2211296167E-004, 4.0408897104E-004  &
   orientation = 270.0013999158d, 90.0013384605d, 180.0000000327d
!
marker create  &
   marker_name = .baqubot_2.Left_Wheel.MARKER_25  &
   adams_id = 25  &
   location = -78.0001339486, 4.2211296167E-004, 4.0408897104E-004  &
   orientation = 270.0013999158d, 90.0013384605d, 180.0d
!
marker create  &
   marker_name = .baqubot_2.Left_Wheel.MARKER_26  &
   adams_id = 26  &
   location = -78.0001339486, 4.2211296167E-004, 4.0408897104E-004  &
   orientation = 270.0013999158d, 90.0013384605d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_2.Left_Wheel  &
   density = 1.05E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_2.Left_Wheel  &
   color = COLOR_R000G105B229
!
!--------------------------------- Front_Fork ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_2.Front_Fork  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.Front_Fork
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_2.Front_Fork.PSMAR  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_2.Front_Fork.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_2.Front_Fork.cm  &
   adams_id = 20  &
   location = 0.0, 67.8098337307, -22.1964834729  &
   orientation = 90.0d, 90.0d, 317.9768684841d
!
marker create  &
   marker_name = .baqubot_2.Front_Fork.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 90.0, -9.36  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .baqubot_2.Front_Fork.MARKER_8  &
   adams_id = 8  &
   location = -5.5268432617E-004, 64.9997654971, -32.5020404271  &
   orientation = 270.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_2.Front_Fork  &
   density = 8.03E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_2.Front_Fork  &
   color = COLOR_R169G175B178
!
!-------------------------------- Crazy_Wheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_2.Crazy_Wheel  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.Crazy_Wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_2.Crazy_Wheel.PSMAR  &
   adams_id = 21  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_2.Crazy_Wheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_2.Crazy_Wheel.cm  &
   adams_id = 22  &
   location = -5.5268432617E-004, 64.9997654971, -32.5020404271  &
   orientation = 180.1127319016d, 15.7622033832d, 179.9066918129d
!
marker create  &
   marker_name = .baqubot_2.Crazy_Wheel.MARKER_9  &
   adams_id = 9  &
   location = -5.5268432617E-004, 64.9997654971, -32.5020404271  &
   orientation = 270.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_2.Crazy_Wheel  &
   density = 7.83E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_2.Crazy_Wheel  &
   color = COLOR_R051G051B051
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "Bot_2.xmt_txt"  &
   model_name = .baqubot_2
!
geometry attributes  &
   geometry_name = .baqubot_2.Chassis.SOLID1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .baqubot_2.Right_Wheel.SOLID2  &
   color = COLOR_R000G105B229
!
geometry attributes  &
   geometry_name = .baqubot_2.Left_Wheel.SOLID3  &
   color = COLOR_R000G105B229
!
geometry attributes  &
   geometry_name = .baqubot_2.Front_Fork.SOLID4  &
   color = COLOR_R169G175B178
!
geometry attributes  &
   geometry_name = .baqubot_2.Crazy_Wheel.SOLID5  &
   color = COLOR_R051G051B051
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .baqubot_2.Contact_1  &
   adams_id = 1  &
   i_geometry_name = .baqubot_2.ground.SOLID0  &
   j_geometry_name = .baqubot_2.Right_Wheel.SOLID2  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 0.73  &
   mu_dynamic = 0.55  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
contact create  &
   contact_name = .baqubot_2.Contact_2  &
   adams_id = 2  &
   i_geometry_name = .baqubot_2.ground.SOLID0  &
   j_geometry_name = .baqubot_2.Left_Wheel.SOLID3  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 0.73  &
   mu_dynamic = 0.55  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
contact create  &
   contact_name = .baqubot_2.Contact_3  &
   adams_id = 3  &
   i_geometry_name = .baqubot_2.ground.SOLID0  &
   j_geometry_name = .baqubot_2.Crazy_Wheel.SOLID5  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 0.73  &
   mu_dynamic = 0.55  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .baqubot_2.Joint_1  &
   adams_id = 1  &
   i_marker_name = .baqubot_2.Chassis.MARKER_2  &
   j_marker_name = .baqubot_2.Right_Wheel.MARKER_3
!
constraint attributes  &
   constraint_name = .baqubot_2.Joint_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .baqubot_2.Joint_2  &
   adams_id = 2  &
   i_marker_name = .baqubot_2.Chassis.MARKER_4  &
   j_marker_name = .baqubot_2.Left_Wheel.MARKER_5
!
constraint attributes  &
   constraint_name = .baqubot_2.Joint_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .baqubot_2.Joint_3  &
   adams_id = 3  &
   i_marker_name = .baqubot_2.Chassis.MARKER_6  &
   j_marker_name = .baqubot_2.Front_Fork.MARKER_7
!
constraint attributes  &
   constraint_name = .baqubot_2.Joint_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .baqubot_2.Joint_4  &
   adams_id = 4  &
   i_marker_name = .baqubot_2.Front_Fork.MARKER_8  &
   j_marker_name = .baqubot_2.Crazy_Wheel.MARKER_9
!
constraint attributes  &
   constraint_name = .baqubot_2.Joint_4  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like friction  &
   friction_name = .baqubot_2.Friction_1  &
   adams_id = 1  &
   joint_name = .baqubot_2.Joint_1  &
   mu_static = 0.15  &
   mu_dynamic = 0.1  &
   friction_arm = 12.0  &
   bending_reaction_arm = 36.0  &
   pin_radius = 8.0  &
   stiction_transition_velocity = 1.0  &
   max_stiction_deformation = 1.0E-002  &
   friction_torque_preload = 0.0  &
   effect = all  &
   preload = off  &
   reaction_force = on  &
   bending_moment = on  &
   inactive_during_static = off
!
force create element_like friction  &
   friction_name = .baqubot_2.Friction_2  &
   adams_id = 2  &
   joint_name = .baqubot_2.Joint_2  &
   mu_static = 0.15  &
   mu_dynamic = 0.1  &
   friction_arm = 12.0  &
   bending_reaction_arm = 36.0  &
   pin_radius = 8.0  &
   stiction_transition_velocity = 1.0  &
   max_stiction_deformation = 1.0E-002  &
   friction_torque_preload = 0.0  &
   effect = all  &
   preload = off  &
   reaction_force = on  &
   bending_moment = on  &
   inactive_during_static = off
!
force create element_like friction  &
   friction_name = .baqubot_2.Friction_3  &
   adams_id = 3  &
   joint_name = .baqubot_2.Joint_3  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.3E-002  &
   friction_arm = 2.5  &
   bending_reaction_arm = 3.0  &
   pin_radius = 2.5  &
   stiction_transition_velocity = 1.0  &
   max_stiction_deformation = 1.0E-002  &
   friction_torque_preload = 0.0  &
   effect = all  &
   preload = off  &
   reaction_force = on  &
   bending_moment = on  &
   inactive_during_static = off
!
force create element_like friction  &
   friction_name = .baqubot_2.Friction_4  &
   adams_id = 4  &
   joint_name = .baqubot_2.Joint_4  &
   mu_static = 0.15  &
   mu_dynamic = 0.1  &
   friction_arm = 6.2  &
   bending_reaction_arm = 30.0  &
   pin_radius = 3.025  &
   stiction_transition_velocity = 1.0  &
   max_stiction_deformation = 1.0E-002  &
   friction_torque_preload = 0.0  &
   effect = all  &
   preload = off  &
   reaction_force = on  &
   bending_moment = on  &
   inactive_during_static = off
!
force create direct single_component_force  &
   single_component_force_name = .baqubot_2.RW_Torque  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .baqubot_2.Right_Wheel.MARKER_23  &
   j_marker_name = .baqubot_2.Right_Wheel.MARKER_24  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .baqubot_2.LW_Torque  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .baqubot_2.Left_Wheel.MARKER_25  &
   j_marker_name = .baqubot_2.Left_Wheel.MARKER_26  &
   action_only = on  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .baqubot_2.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=10.0 number_of_steps=500 model_name=.baqubot_2"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .baqubot_2.Bot_2  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.input_channels  &
   object_value =   &
      .baqubot_2.Trw,  &
      .baqubot_2.Tlw
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.output_channels  &
   object_value =   &
      .baqubot_2.Wrw,  &
      .baqubot_2.Wlw,  &
      .baqubot_2.Alpha,  &
      .baqubot_2.X_Dist,  &
      .baqubot_2.Y_Dist
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.file_name  &
   string_value = "Bot_2"
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.host  &
   string_value = "baqumau-PC.mshome.net"
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .baqubot_2.Bot_2.tcp_ip  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .baqubot_2.Bot_2
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_2.ground
!
geometry create shape force  &
   force_name = .baqubot_2.SFORCE_1_force_graphic_1  &
   adams_id = 18  &
   force_element_name = .baqubot_2.RW_Torque  &
   applied_at_marker_name = .baqubot_2.Right_Wheel.MARKER_23
!
geometry create shape force  &
   force_name = .baqubot_2.SFORCE_2_force_graphic_1  &
   adams_id = 19  &
   force_element_name = .baqubot_2.LW_Torque  &
   applied_at_marker_name = .baqubot_2.Left_Wheel.MARKER_25
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_2.GCONTACT_15  &
   adams_id = 15  &
   contact_element_name = .baqubot_2.Contact_1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_2.GCONTACT_15  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_2.GCONTACT_16  &
   adams_id = 16  &
   contact_element_name = .baqubot_2.Contact_2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_2.GCONTACT_16  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_2.GCONTACT_17  &
   adams_id = 17  &
   contact_element_name = .baqubot_2.Contact_3  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_2.GCONTACT_17  &
   color = RED
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = -9806.65
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .baqubot_2._model  &
   string_value = ".baqubot_2"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .baqubot_2.Trw  &
   function = "20"
!
data_element modify variable  &
   variable_name = .baqubot_2.Tlw  &
   function = "20"
!
data_element modify variable  &
   variable_name = .baqubot_2.Wrw  &
   function = "WZ(.baqubot_2.Right_Wheel.MARKER_3,.baqubot_2.Chassis.MARKER_2,.baqubot_2.Right_Wheel.MARKER_3)"
!
data_element modify variable  &
   variable_name = .baqubot_2.Wlw  &
   function = "WZ(.baqubot_2.Left_Wheel.MARKER_5,.baqubot_2.Chassis.MARKER_4,.baqubot_2.Left_Wheel.MARKER_5)"
!
data_element modify variable  &
   variable_name = .baqubot_2.Alpha  &
   function = "YAW(.baqubot_2.Chassis.MARKER_27,.baqubot_2.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .baqubot_2.X_Dist  &
   function = "DX(.baqubot_2.Chassis.MARKER_27,.baqubot_2.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .baqubot_2.Y_Dist  &
   function = "DY(.baqubot_2.Chassis.MARKER_27,.baqubot_2.ground.MARKER_1)"
!
force modify direct single_component_force  &
   single_component_force_name = .baqubot_2.RW_Torque  &
   function = "VARVAL(.baqubot_2.Trw)"
!
force modify direct single_component_force  &
   single_component_force_name = .baqubot_2.LW_Torque  &
   function = "VARVAL(.baqubot_2.Tlw)"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .baqubot_2.Bot_2
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape block  &
   block_name = .baqubot_2.ground.SOLID0  &
   diag_corner_coords =   &
      (5000.0mm),  &
      (5000.0mm),  &
      (5.0mm)
!
material modify  &
   material_name = .baqubot_2.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
geometry modify shape force  &
   force_name = .baqubot_2.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.baqubot_2.RW_Torque.i)
!
geometry modify shape force  &
   force_name = .baqubot_2.SFORCE_2_force_graphic_1  &
   applied_at_marker_name = (.baqubot_2.LW_Torque.i)
!
model display  &
   model_name = baqubot_2
