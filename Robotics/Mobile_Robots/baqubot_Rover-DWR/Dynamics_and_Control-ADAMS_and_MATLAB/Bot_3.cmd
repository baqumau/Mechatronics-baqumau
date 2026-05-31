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
   model_name = baqubot_3
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .baqubot_3.Trw  &
   adams_id = 1  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_3.Tlw  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_3.Wrw  &
   adams_id = 3  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_3.Wlw  &
   adams_id = 4  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_3.Alpha  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_3.X_Dist  &
   adams_id = 6  &
   function = ""
!
data_element create variable  &
   variable_name = .baqubot_3.Y_Dist  &
   adams_id = 7  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .baqubot_3.Inputs  &
   adams_id = 1  &
   variable_name =  &
      .baqubot_3.Trw,  &
      .baqubot_3.Tlw
!
data_element create plant output  &
   plant_output_name = .baqubot_3.Outputs  &
   adams_id = 1  &
   variable_name =  &
      .baqubot_3.Wrw,  &
      .baqubot_3.Wlw,  &
      .baqubot_3.Alpha,  &
      .baqubot_3.X_Dist,  &
      .baqubot_3.Y_Dist
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .baqubot_3.steel  &
   adams_id = 1  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
material create  &
   material_name = .baqubot_3.polyurethane  &
   adams_id = 2  &
   youngs_modulus = 1.764E+005  &
   poissons_ratio = 0.4  &
   density = 1.85E-007
!
material create  &
   material_name = .baqubot_3.acrylic  &
   adams_id = 3  &
   youngs_modulus = 1930.53196  &
   poissons_ratio = 0.4  &
   density = 6.19E-006
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
   default_coordinate_system = .baqubot_3.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_3.ground.MARKER_1  &
   adams_id = 1  &
   location = -2500.0, -200.0, -55.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .baqubot_3.ground  &
   material_type = .baqubot_3.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .baqubot_3.ground.SOLID0  &
   adams_id = 7  &
   corner_marker = .baqubot_3.ground.MARKER_1  &
   diag_corner_coords = 5000.0, 5000.0, 5.0
!
geometry attributes  &
   geometry_name = .baqubot_3.ground.SOLID0  &
   color = Maroon
!
part attributes  &
   part_name = .baqubot_3.ground  &
   visibility = on  &
   name_visibility = off
!
!--------------------------------- Left_Wheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_3.Left_Wheel  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.Left_Wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_3.Left_Wheel.PSMAR  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_3.Left_Wheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Left_Wheel.cm  &
   adams_id = 19  &
   location = -78.0001339486, 5.2788829478E-004, 2.5060167028E-004  &
   orientation = 359.5113004301d, 1.2099390136d, 0.4887749251d
!
marker attributes  &
   marker_name = .baqubot_3.Left_Wheel.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Left_Wheel.MARKER_5  &
   adams_id = 5  &
   location = -78.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Left_Wheel.MARKER_5  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Left_Wheel.MARKER_13  &
   adams_id = 13  &
   location = -78.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Left_Wheel.MARKER_13  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Left_Wheel.MARKER_14  &
   adams_id = 14  &
   location = -78.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Left_Wheel.MARKER_14  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .baqubot_3.Left_Wheel  &
   material_type = .baqubot_3.polyurethane
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_3.Left_Wheel  &
   color = COLOR_R000G105B229
!
!-------------------------------- Right_Wheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_3.Right_Wheel  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.Right_Wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_3.Right_Wheel.PSMAR  &
   adams_id = 20  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_3.Right_Wheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Right_Wheel.cm  &
   adams_id = 21  &
   location = 78.0001339486, -4.2211296168E-004, 4.0408897103E-004  &
   orientation = 179.9691855358d, 19.5653089231d, 180.0292195618d
!
marker attributes  &
   marker_name = .baqubot_3.Right_Wheel.cm  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Right_Wheel.MARKER_3  &
   adams_id = 3  &
   location = 78.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Right_Wheel.MARKER_3  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Right_Wheel.MARKER_11  &
   adams_id = 11  &
   location = 78.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Right_Wheel.MARKER_11  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Right_Wheel.MARKER_12  &
   adams_id = 12  &
   location = 78.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Right_Wheel.MARKER_12  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .baqubot_3.Right_Wheel  &
   material_type = .baqubot_3.polyurethane
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_3.Right_Wheel  &
   color = COLOR_R000G105B229
!
!--------------------------------- Rear_Fork ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_3.Rear_Fork  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.Rear_Fork
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_3.Rear_Fork.PSMAR  &
   adams_id = 22  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_3.Rear_Fork.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Rear_Fork.cm  &
   adams_id = 23  &
   location = 0.0, -112.1901662693, -22.1964834729  &
   orientation = 90.0d, 90.0d, 317.9768684841d
!
marker attributes  &
   marker_name = .baqubot_3.Rear_Fork.cm  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Rear_Fork.MARKER_7  &
   adams_id = 7  &
   location = 0.0, -90.0, -12.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_3.Rear_Fork.MARKER_7  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Rear_Fork.MARKER_8  &
   adams_id = 8  &
   location = 0.0, -115.0, -32.5028278468  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Rear_Fork.MARKER_8  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .baqubot_3.Rear_Fork  &
   material_type = .baqubot_3.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_3.Rear_Fork  &
   color = COLOR_R169G175B178
!
!--------------------------------- Free_Wheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_3.Free_Wheel  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.Free_Wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_3.Free_Wheel.PSMAR  &
   adams_id = 24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_3.Free_Wheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Free_Wheel.cm  &
   adams_id = 25  &
   location = -5.526843262E-004, -115.0002345029, -32.5020404271  &
   orientation = 180.1127319016d, 15.7622033818d, 179.9066918129d
!
marker attributes  &
   marker_name = .baqubot_3.Free_Wheel.cm  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Free_Wheel.MARKER_9  &
   adams_id = 9  &
   location = 0.0, -115.0, -32.5028278468  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Free_Wheel.MARKER_9  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .baqubot_3.Free_Wheel  &
   material_type = .baqubot_3.polyurethane
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_3.Free_Wheel  &
   color = COLOR_R051G051B051
!
!---------------------------------- Chassis -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.ground
!
part create rigid_body name_and_position  &
   part_name = .baqubot_3.Chassis  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.Chassis
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .baqubot_3.Chassis.PSMAR  &
   adams_id = 26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_3.Chassis.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Chassis.cm  &
   adams_id = 27  &
   location = 2.2039397668E-008, -10.6368217688, -13.42446998  &
   orientation = 179.9999998072d, 98.3415504116d, 89.9999999609d
!
marker attributes  &
   marker_name = .baqubot_3.Chassis.cm  &
   visibility = off
!
marker create  &
   marker_name = .baqubot_3.Chassis.MARKER_2  &
   adams_id = 2  &
   location = 78.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Chassis.MARKER_2  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Chassis.MARKER_4  &
   adams_id = 4  &
   location = -78.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .baqubot_3.Chassis.MARKER_4  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Chassis.MARKER_6  &
   adams_id = 6  &
   location = 0.0, -90.0, -12.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_3.Chassis.MARKER_6  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .baqubot_3.Chassis.MARKER_10  &
   adams_id = 10  &
   location = 0.0, 0.0, -43.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .baqubot_3.Chassis.MARKER_10  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .baqubot_3.Chassis  &
   material_type = .baqubot_3.acrylic
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .baqubot_3.Chassis  &
   color = WHITE  &
   transparency = 60
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "Bot_3.xmt_txt"  &
   model_name = .baqubot_3
!
geometry attributes  &
   geometry_name = .baqubot_3.Left_Wheel.SOLID1  &
   color = COLOR_R000G105B229
!
geometry attributes  &
   geometry_name = .baqubot_3.Right_Wheel.SOLID2  &
   color = COLOR_R000G105B229
!
geometry attributes  &
   geometry_name = .baqubot_3.Rear_Fork.SOLID3  &
   color = COLOR_R169G175B178
!
geometry attributes  &
   geometry_name = .baqubot_3.Free_Wheel.SOLID4  &
   color = COLOR_R051G051B051
!
geometry attributes  &
   geometry_name = .baqubot_3.Chassis.SOLID5  &
   color = WHITE
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .baqubot_3.Contact_1  &
   adams_id = 1  &
   i_geometry_name = .baqubot_3.ground.SOLID0  &
   j_geometry_name = .baqubot_3.Right_Wheel.SOLID2  &
   stiffness = 10.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 1.0E-003  &
   coulomb_friction = on  &
   mu_static = 7.3E-002  &
   mu_dynamic = 5.5E-002  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
contact create  &
   contact_name = .baqubot_3.Contact_2  &
   adams_id = 2  &
   i_geometry_name = .baqubot_3.ground.SOLID0  &
   j_geometry_name = .baqubot_3.Left_Wheel.SOLID1  &
   stiffness = 10.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 1.0E-003  &
   coulomb_friction = on  &
   mu_static = 7.3E-002  &
   mu_dynamic = 5.5E-002  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
contact create  &
   contact_name = .baqubot_3.Contact_3  &
   adams_id = 3  &
   i_geometry_name = .baqubot_3.ground.SOLID0  &
   j_geometry_name = .baqubot_3.Free_Wheel.SOLID4  &
   stiffness = 10.0  &
   damping = 0.1  &
   exponent = 2.2  &
   dmax = 1.0E-003  &
   coulomb_friction = on  &
   mu_static = 7.3E-002  &
   mu_dynamic = 5.5E-002  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .baqubot_3.Joint_1  &
   adams_id = 1  &
   i_marker_name = .baqubot_3.Chassis.MARKER_2  &
   j_marker_name = .baqubot_3.Right_Wheel.MARKER_3
!
constraint attributes  &
   constraint_name = .baqubot_3.Joint_1  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .baqubot_3.Joint_2  &
   adams_id = 2  &
   i_marker_name = .baqubot_3.Chassis.MARKER_4  &
   j_marker_name = .baqubot_3.Left_Wheel.MARKER_5
!
constraint attributes  &
   constraint_name = .baqubot_3.Joint_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .baqubot_3.Joint_3  &
   adams_id = 3  &
   i_marker_name = .baqubot_3.Chassis.MARKER_6  &
   j_marker_name = .baqubot_3.Rear_Fork.MARKER_7
!
constraint attributes  &
   constraint_name = .baqubot_3.Joint_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .baqubot_3.Joint_4  &
   adams_id = 4  &
   i_marker_name = .baqubot_3.Rear_Fork.MARKER_8  &
   j_marker_name = .baqubot_3.Free_Wheel.MARKER_9
!
constraint attributes  &
   constraint_name = .baqubot_3.Joint_4  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like friction  &
   friction_name = .baqubot_3.Friction_1  &
   adams_id = 1  &
   joint_name = .baqubot_3.Joint_1  &
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
   friction_name = .baqubot_3.Friction_2  &
   adams_id = 2  &
   joint_name = .baqubot_3.Joint_2  &
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
   friction_name = .baqubot_3.Friction_3  &
   adams_id = 3  &
   joint_name = .baqubot_3.Joint_3  &
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
   friction_name = .baqubot_3.Friction_4  &
   adams_id = 4  &
   joint_name = .baqubot_3.Joint_4  &
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
   single_component_force_name = .baqubot_3.RW_Torque  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .baqubot_3.Right_Wheel.MARKER_11  &
   j_marker_name = .baqubot_3.Right_Wheel.MARKER_12  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .baqubot_3.LW_Torque  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .baqubot_3.Left_Wheel.MARKER_13  &
   j_marker_name = .baqubot_3.Left_Wheel.MARKER_14  &
   action_only = on  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .baqubot_3.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=5.0 number_of_steps=500 model_name=.baqubot_3"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .baqubot_3.Bot_3  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.input_channels  &
   object_value =   &
      .baqubot_3.Trw,  &
      .baqubot_3.Tlw
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.output_channels  &
   object_value =   &
      .baqubot_3.Wrw,  &
      .baqubot_3.Wlw,  &
      .baqubot_3.Alpha,  &
      .baqubot_3.X_Dist,  &
      .baqubot_3.Y_Dist
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.file_name  &
   string_value = "Bot_3"
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.host  &
   string_value = "baqumau-PC"
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .baqubot_3.Bot_3.tcp_ip  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .baqubot_3.Bot_3
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .baqubot_3.ground
!
geometry create shape force  &
   force_name = .baqubot_3.SFORCE_1_force_graphic_1  &
   adams_id = 18  &
   force_element_name = .baqubot_3.RW_Torque  &
   applied_at_marker_name = .baqubot_3.Right_Wheel.MARKER_11
!
geometry create shape force  &
   force_name = .baqubot_3.SFORCE_2_force_graphic_1  &
   adams_id = 19  &
   force_element_name = .baqubot_3.LW_Torque  &
   applied_at_marker_name = .baqubot_3.Left_Wheel.MARKER_13
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_3.GCONTACT_15  &
   adams_id = 15  &
   contact_element_name = .baqubot_3.Contact_1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_3.GCONTACT_15  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_3.GCONTACT_16  &
   adams_id = 16  &
   contact_element_name = .baqubot_3.Contact_2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_3.GCONTACT_16  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .baqubot_3.GCONTACT_17  &
   adams_id = 17  &
   contact_element_name = .baqubot_3.Contact_3  &
   force_display = components
!
geometry attributes  &
   geometry_name = .baqubot_3.GCONTACT_17  &
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
   variable_name = .baqubot_3._model  &
   string_value = ".baqubot_3"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .baqubot_3.Trw  &
   function = "10"
!
data_element modify variable  &
   variable_name = .baqubot_3.Tlw  &
   function = "10"
!
data_element modify variable  &
   variable_name = .baqubot_3.Wrw  &
   function = "WZ(.baqubot_3.Right_Wheel.MARKER_3,.baqubot_3.Chassis.MARKER_2,.baqubot_3.Right_Wheel.MARKER_3)"
!
data_element modify variable  &
   variable_name = .baqubot_3.Wlw  &
   function = "WZ(.baqubot_3.Left_Wheel.MARKER_5,.baqubot_3.Chassis.MARKER_4,.baqubot_3.Left_Wheel.MARKER_5)"
!
data_element modify variable  &
   variable_name = .baqubot_3.Alpha  &
   function = "YAW(.baqubot_3.Chassis.MARKER_10,.baqubot_3.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .baqubot_3.X_Dist  &
   function = "DX(.baqubot_3.Chassis.MARKER_10,.baqubot_3.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .baqubot_3.Y_Dist  &
   function = "DY(.baqubot_3.Chassis.MARKER_10,.baqubot_3.ground.MARKER_1)"
!
force modify direct single_component_force  &
   single_component_force_name = .baqubot_3.RW_Torque  &
   function = "VARVAL(.baqubot_3.Trw)"
!
force modify direct single_component_force  &
   single_component_force_name = .baqubot_3.LW_Torque  &
   function = "VARVAL(.baqubot_3.Tlw)"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .baqubot_3.Bot_3
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape block  &
   block_name = .baqubot_3.ground.SOLID0  &
   diag_corner_coords =   &
      (5000.0mm),  &
      (5000.0mm),  &
      (5.0mm)
!
material modify  &
   material_name = .baqubot_3.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
geometry modify shape force  &
   force_name = .baqubot_3.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.baqubot_3.RW_Torque.i)
!
geometry modify shape force  &
   force_name = .baqubot_3.SFORCE_2_force_graphic_1  &
   applied_at_marker_name = (.baqubot_3.LW_Torque.i)
!
material modify  &
   material_name = .baqubot_3.polyurethane  &
   youngs_modulus = (1.764E+011(N/m**2))  &
   density = (185(kg/m**3))
!
material modify  &
   material_name = .baqubot_3.acrylic  &
   youngs_modulus = (1.93053196E+009(N/m**2))  &
   density = (6.19E-006(kg/mm**3))
!
model display  &
   model_name = baqubot_3
