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
   model_name = baqubot_1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .baqubot_1.Tr  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_1.Tl  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_1.Wr  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_1.Wl  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_1.Alpha  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_1.X_Dist  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_1.Y_Dist  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .baqubot_1.Inputs  &
   adams_id = 1  &
   variable_name =  &
      .baqubot_1.Tl,  &
      .baqubot_1.Tr
!
data_element create plant output  &
   plant_output_name = .baqubot_1.Outputs  &
   adams_id = 1  &
   variable_name =  &
      .baqubot_1.Wr,  &
      .baqubot_1.Wl,  &
      .baqubot_1.Alpha,  &
      .baqubot_1.X_Dist,  &
      .baqubot_1.Y_Dist
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .baqubot_1.steel  &
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
   default_coordinate_system = .baqubot_1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_1.ground.MARKER_1  &
   adams_id = 1  &
   location = -1.2E+004, 1.2E+004, -60.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .baqubot_1.ground.MARKER_29  &
   adams_id = 29  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_1.ground  &
   material_type = .baqubot_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .baqubot_1.ground.SOLID0  &
   adams_id = 7  &
   corner_marker = .baqubot_1.ground.MARKER_1  &
   diag_corner_coords = 2.4E+004, -2.4E+004, 10.0
!
part attributes  &
   part_name = .baqubot_1.ground  &
   name_visibility = off
!
!---------------------------------- Chassis -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_1.Chassis  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.Chassis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_1.Chassis.PSMAR  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_1.Chassis.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_1.Chassis.cm  &
   adams_id = 15  &
   location = 0.0, 20.9478051322, -15.9914442613  &
   orientation = 180.0d, 88.7141457329d, 90.0d
!
marker create  &
   marker_name = .baqubot_1.Chassis.MARKER_4  &
   adams_id = 4  &
   location = 78.0001339486, -5.2788829477E-004, 2.5060167027E-004  &
   orientation = 269.9982469874d, 90.0008348311d, 179.9999999745d
!
marker create  &
   marker_name = .baqubot_1.Chassis.MARKER_6  &
   adams_id = 6  &
   location = -78.0001339486, 4.2211296166E-004, 4.0408897104E-004  &
   orientation = 270.0013436373d, 90.0012862647d, 180.0000000302d
!
marker create  &
   marker_name = .baqubot_1.Chassis.MARKER_8  &
   adams_id = 8  &
   location = 0.0, 75.0, -40.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .baqubot_1.Chassis.MARKER_28  &
   adams_id = 28  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_1.Chassis  &
   density = 1.19E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_1.Chassis  &
   color = WHITE
!
!-------------------------------- Right_Wheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_1.Right_Wheel  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.Right_Wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_1.Right_Wheel.PSMAR  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_1.Right_Wheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_1.Right_Wheel.cm  &
   adams_id = 17  &
   location = 78.0001339486, -5.2788829476E-004, 2.5060167027E-004  &
   orientation = 179.5113004301d, 1.2099390136d, 180.4887749251d
!
marker create  &
   marker_name = .baqubot_1.Right_Wheel.MARKER_5  &
   adams_id = 5  &
   location = 78.0001339486, -5.2788829477E-004, 2.5060167027E-004  &
   orientation = 269.9982469874d, 90.0008348311d, 179.9999999745d
!
marker attributes  &
   marker_name = .baqubot_1.Right_Wheel.MARKER_5  &
   visibility = on
!
marker create  &
   marker_name = .baqubot_1.Right_Wheel.MARKER_26  &
   adams_id = 26  &
   location = 78.0001339486, -5.2788829477E-004, 2.5060167027E-004  &
   orientation = 269.9982469874d, 90.0008348311d, 179.9999999745d
!
marker create  &
   marker_name = .baqubot_1.Right_Wheel.MARKER_27  &
   adams_id = 27  &
   location = 78.0001339486, -5.2788829477E-004, 2.5060167027E-004  &
   orientation = 269.9982469874d, 90.0008348311d, 179.9999999745d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_1.Right_Wheel  &
   density = 1.05E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_1.Right_Wheel  &
   color = COLOR_R000G105B229
!
!--------------------------------- Left_Wheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_1.Left_Wheel  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.Left_Wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_1.Left_Wheel.PSMAR  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_1.Left_Wheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_1.Left_Wheel.cm  &
   adams_id = 19  &
   location = -78.0001339486, 4.2211296167E-004, 4.0408897104E-004  &
   orientation = 359.9691855358d, 19.5653089234d, 2.9219561833E-002d
!
marker create  &
   marker_name = .baqubot_1.Left_Wheel.MARKER_7  &
   adams_id = 7  &
   location = -78.0001339486, 4.2211296166E-004, 4.0408897104E-004  &
   orientation = 270.0013436373d, 90.0012862647d, 180.0000000302d
!
marker create  &
   marker_name = .baqubot_1.Left_Wheel.MARKER_24  &
   adams_id = 24  &
   location = -78.0001339486, 4.2211296166E-004, 4.0408897104E-004  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .baqubot_1.Left_Wheel.MARKER_25  &
   adams_id = 25  &
   location = -78.0001339486, 4.2211296166E-004, 4.0408897104E-004  &
   orientation = 270.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_1.Left_Wheel  &
   density = 1.05E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_1.Left_Wheel  &
   color = COLOR_R000G105B229
!
!-------------------------------- Sphere_Case ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_1.Sphere_Case  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.Sphere_Case
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_1.Sphere_Case.PSMAR  &
   adams_id = 20  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_1.Sphere_Case.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_1.Sphere_Case.cm  &
   adams_id = 21  &
   location = 0.0, 75.0, -40.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .baqubot_1.Sphere_Case.MARKER_31  &
   adams_id = 31  &
   location = 0.0, 75.0, -40.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .baqubot_1.Sphere_Case.MARKER_9  &
   adams_id = 9  &
   location = 0.0, 75.0, -40.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_1.Sphere_Case  &
   density = 1.19E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_1.Sphere_Case  &
   color = WHITE
!
part attributes  &
   part_name = .baqubot_1.Sphere_Case  &
   color = WHITE  &
   entity_scope = fill_color
!
part attributes  &
   part_name = .baqubot_1.Sphere_Case  &
   transparency = 77
!
!----------------------------------- Sphere -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_1.Sphere  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.Sphere
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_1.Sphere.PSMAR  &
   adams_id = 22  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_1.Sphere.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_1.Sphere.cm  &
   adams_id = 23  &
   location = 0.0, 75.0, -40.0  &
   orientation = 231.1680913439d, 164.9781706209d, 180.0d
!
marker create  &
   marker_name = .baqubot_1.Sphere.MARKER_30  &
   adams_id = 30  &
   location = 0.0, 75.0, -40.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_1.Sphere  &
   density = 8.027E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_1.Sphere  &
   color = COLOR_R169G175B178
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "Bot.xmt_txt"  &
   model_name = .baqubot_1
!
geometry attributes  &
   geometry_name = .baqubot_1.Chassis.SOLID1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .baqubot_1.Right_Wheel.SOLID2  &
   color = COLOR_R000G105B229
!
geometry attributes  &
   geometry_name = .baqubot_1.Left_Wheel.SOLID3  &
   color = COLOR_R000G105B229
!
geometry attributes  &
   geometry_name = .baqubot_1.Sphere_Case.SOLID4  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .baqubot_1.Sphere.SOLID5  &
   color = COLOR_R169G175B178
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .baqubot_1.Contact_1  &
   adams_id = 1  &
   i_geometry_name = .baqubot_1.Right_Wheel.SOLID2  &
   j_geometry_name = .baqubot_1.ground.SOLID0  &
   stiffness = 100.0  &
   damping = 5.0  &
   exponent = 1.0  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 0.75  &
   mu_dynamic = 0.58  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 5.0
!
contact create  &
   contact_name = .baqubot_1.Contact_2  &
   adams_id = 2  &
   i_geometry_name = .baqubot_1.Left_Wheel.SOLID3  &
   j_geometry_name = .baqubot_1.ground.SOLID0  &
   stiffness = 100.0  &
   damping = 5.0  &
   exponent = 1.0  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 0.75  &
   mu_dynamic = 0.58  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 5.0
!
contact create  &
   contact_name = .baqubot_1.Contact_3  &
   adams_id = 3  &
   i_geometry_name = .baqubot_1.Sphere.SOLID5  &
   j_geometry_name = .baqubot_1.ground.SOLID0  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 1.0E-002  &
   coulomb_friction = on  &
   mu_static = 0.38  &
   mu_dynamic = 0.17  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint spherical  &
   joint_name = .baqubot_1.Joint_3  &
   adams_id = 5  &
   i_marker_name = .baqubot_1.Sphere.MARKER_30  &
   j_marker_name = .baqubot_1.Sphere_Case.MARKER_31
!
constraint attributes  &
   constraint_name = .baqubot_1.Joint_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .baqubot_1.Joint_1  &
   adams_id = 2  &
   i_marker_name = .baqubot_1.Chassis.MARKER_4  &
   j_marker_name = .baqubot_1.Right_Wheel.MARKER_5
!
constraint attributes  &
   constraint_name = .baqubot_1.Joint_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .baqubot_1.Joint_2  &
   adams_id = 3  &
   i_marker_name = .baqubot_1.Chassis.MARKER_6  &
   j_marker_name = .baqubot_1.Left_Wheel.MARKER_7
!
constraint attributes  &
   constraint_name = .baqubot_1.Joint_2  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .baqubot_1.Fixed_1  &
   adams_id = 4  &
   i_marker_name = .baqubot_1.Chassis.MARKER_8  &
   j_marker_name = .baqubot_1.Sphere_Case.MARKER_9
!
constraint attributes  &
   constraint_name = .baqubot_1.Fixed_1  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like friction  &
   friction_name = .baqubot_1.Friction_1  &
   adams_id = 1  &
   joint_name = .baqubot_1.Joint_1  &
   mu_static = 0.15  &
   mu_dynamic = 3.0E-002  &
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
   friction_name = .baqubot_1.Friction_2  &
   adams_id = 2  &
   joint_name = .baqubot_1.Joint_2  &
   mu_static = 0.15  &
   mu_dynamic = 3.0E-002  &
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
force create direct single_component_force  &
   single_component_force_name = .baqubot_1.Left_Torque  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .baqubot_1.Left_Wheel.MARKER_24  &
   j_marker_name = .baqubot_1.Left_Wheel.MARKER_25  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .baqubot_1.Right_Torque  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .baqubot_1.Right_Wheel.MARKER_26  &
   j_marker_name = .baqubot_1.Right_Wheel.MARKER_27  &
   action_only = on  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .baqubot_1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=dynamic initial_static=no end_time=50.0 number_of_steps=1000 model_name=.baqubot_1"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .baqubot_1.Bot  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .baqubot_1.Bot.input_channels  &
   object_value =   &
      .baqubot_1.Tl,  &
      .baqubot_1.Tr
!
variable modify  &
   variable_name = .baqubot_1.Bot.output_channels  &
   object_value =   &
      .baqubot_1.Wr,  &
      .baqubot_1.Wl,  &
      .baqubot_1.Alpha,  &
      .baqubot_1.X_Dist,  &
      .baqubot_1.Y_Dist
!
variable modify  &
   variable_name = .baqubot_1.Bot.file_name  &
   string_value = "Bot"
!
variable modify  &
   variable_name = .baqubot_1.Bot.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .baqubot_1.Bot.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .baqubot_1.Bot.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .baqubot_1.Bot.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .baqubot_1.Bot.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .baqubot_1.Bot.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .baqubot_1.Bot.host  &
   string_value = "baqumau-PC"
!
variable modify  &
   variable_name = .baqubot_1.Bot.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .baqubot_1.Bot.tcp_ip  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .baqubot_1.Bot
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_1.ground
!
geometry create shape force  &
   force_name = .baqubot_1.SFORCE_1_force_graphic_1  &
   adams_id = 23  &
   force_element_name = .baqubot_1.Left_Torque  &
   applied_at_marker_name = .baqubot_1.Left_Wheel.MARKER_24
!
geometry create shape force  &
   force_name = .baqubot_1.SFORCE_2_force_graphic_1  &
   adams_id = 24  &
   force_element_name = .baqubot_1.Right_Torque  &
   applied_at_marker_name = .baqubot_1.Right_Wheel.MARKER_26
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_1.GCONTACT_15  &
   adams_id = 15  &
   contact_element_name = .baqubot_1.Contact_1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_1.GCONTACT_15  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_1.GCONTACT_16  &
   adams_id = 16  &
   contact_element_name = .baqubot_1.Contact_2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_1.GCONTACT_16  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_1.GCONTACT_19  &
   adams_id = 19  &
   contact_element_name = .baqubot_1.Contact_3  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_1.GCONTACT_19  &
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
executive_control set numerical_integration_parameters  &
   model_name = baqubot_1  &
   error_tolerance = 1.0E-005
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .baqubot_1._model  &
   string_value = ".baqubot_1"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .baqubot_1.Tr  &
   function = "0"
!
data_element modify variable  &
   variable_name = .baqubot_1.Tl  &
   function = "0"
!
data_element modify variable  &
   variable_name = .baqubot_1.Wr  &
   function = "WZ(.baqubot_1.Right_Wheel.MARKER_5,.baqubot_1.Chassis.MARKER_4,.baqubot_1.Right_Wheel.MARKER_5)"
!
data_element modify variable  &
   variable_name = .baqubot_1.Wl  &
   function = "WZ(.baqubot_1.Left_Wheel.MARKER_7,.baqubot_1.Chassis.MARKER_6,.baqubot_1.Left_Wheel.MARKER_7)"
!
data_element modify variable  &
   variable_name = .baqubot_1.Alpha  &
   function = "YAW(.baqubot_1.Chassis.MARKER_28,.baqubot_1.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .baqubot_1.X_Dist  &
   function = "DX(.baqubot_1.Chassis.MARKER_28,.baqubot_1.ground.MARKER_29,.baqubot_1.Chassis.MARKER_28)"
!
data_element modify variable  &
   variable_name = .baqubot_1.Y_Dist  &
   function = "DY(.baqubot_1.Chassis.MARKER_28,.baqubot_1.ground.MARKER_29,.baqubot_1.Chassis.MARKER_28)"
!
force modify direct single_component_force  &
   single_component_force_name = .baqubot_1.Left_Torque  &
   function = "VARVAL(.baqubot_1.Tl)"
!
force modify direct single_component_force  &
   single_component_force_name = .baqubot_1.Right_Torque  &
   function = "VARVAL(.baqubot_1.Tr)"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .baqubot_1.Bot
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape block  &
   block_name = .baqubot_1.ground.SOLID0  &
   diag_corner_coords =   &
      (2.4E+004mm),  &
      (-2.4E+004mm),  &
      (1.0cm)
!
material modify  &
   material_name = .baqubot_1.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
geometry modify shape force  &
   force_name = .baqubot_1.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.baqubot_1.Left_Torque.i)
!
geometry modify shape force  &
   force_name = .baqubot_1.SFORCE_2_force_graphic_1  &
   applied_at_marker_name = (.baqubot_1.Right_Torque.i)
!
model display  &
   model_name = baqubot_1
