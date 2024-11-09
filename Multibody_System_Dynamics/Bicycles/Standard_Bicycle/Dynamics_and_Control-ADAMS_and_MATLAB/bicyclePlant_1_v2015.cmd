!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
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
if condition = (! db_exists(".colors.COLOR_R030G030B030"))
!
color create  &
   color_name = .colors.COLOR_R030G030B030  &
   red_component = 0.1199999973  &
   blue_component = 0.1199999973  &
   green_component = 0.1199999973
!
else 
!
color modify  &
   color_name = .colors.COLOR_R030G030B030  &
   red_component = 0.1199999973  &
   blue_component = 0.1199999973  &
   green_component = 0.1199999973
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
if condition = (! db_exists(".colors.COLOR_R145G145B145"))
!
color create  &
   color_name = .colors.COLOR_R145G145B145  &
   red_component = 0.5699999928  &
   blue_component = 0.5699999928  &
   green_component = 0.5699999928
!
else 
!
color modify  &
   color_name = .colors.COLOR_R145G145B145  &
   red_component = 0.5699999928  &
   blue_component = 0.5699999928  &
   green_component = 0.5699999928
!
end 
!
if condition = (! db_exists(".colors.COLOR_R209G209B209"))
!
color create  &
   color_name = .colors.COLOR_R209G209B209  &
   red_component = 0.8199999928  &
   blue_component = 0.8199999928  &
   green_component = 0.8199999928
!
else 
!
color modify  &
   color_name = .colors.COLOR_R209G209B209  &
   red_component = 0.8199999928  &
   blue_component = 0.8199999928  &
   green_component = 0.8199999928
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
   size_of_icons = 5.0E-002  &
   spacing_for_grid = 1.0
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
   model_name = Bicycle_1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .Bicycle_1.RearWheel_AngSpeed  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Bicycle_1.Steering_Angle  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Bicycle_1.Lean_Angle  &
   adams_id = 6  &
   function = ""
!
data_element create variable  &
   variable_name = .Bicycle_1.Disturbance  &
   adams_id = 13  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .Bicycle_1.Inputs  &
   adams_id = 1  &
   variable_name =  &
      .Bicycle_1.RearWheel_AngSpeed,  &
      .Bicycle_1.Steering_Angle,  &
      .Bicycle_1.Disturbance
!
data_element create plant output  &
   plant_output_name = .Bicycle_1.Outputs  &
   adams_id = 1  &
   variable_name = .Bicycle_1.Lean_Angle
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Bicycle_1.steel  &
   adams_id = 1  &
   density = 7801.0  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29
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
   default_coordinate_system = .Bicycle_1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.ground.MARKER_19  &
   adams_id = 19  &
   location = -50.0, -25.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ground.MARKER_19  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.ground  &
   material_type = .Bicycle_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .Bicycle_1.ground.BOX_12  &
   adams_id = 12  &
   corner_marker = .Bicycle_1.ground.MARKER_19  &
   diag_corner_coords = 100.0, 50.0, 1.0E-002
!
part attributes  &
   part_name = .Bicycle_1.ground  &
   name_visibility = off
!
!----------------------------------- Frame ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.Frame  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.Frame
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.Frame.PSMAR  &
   adams_id = 32  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Frame.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Frame.cm  &
   adams_id = 33  &
   location = 0.411259265, 1.697075618E-005, -0.6194462276  &
   orientation = 90.0050276778d, 127.0711126507d, 1.1952827992E-002d
!
marker attributes  &
   marker_name = .Bicycle_1.Frame.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Frame.MARKER_12  &
   adams_id = 12  &
   location = -1.6404610749E-003, -1.8048075579E-004, -0.3241058485  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Frame.MARKER_12  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Frame.MARKER_15  &
   adams_id = 15  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Frame.MARKER_15  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Frame.MARKER_18  &
   adams_id = 18  &
   location = 0.8676484604, 0.0, -0.8866634001  &
   orientation = 90.0d, 15.9165866039d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Frame.MARKER_18  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Frame.MARKER_54  &
   adams_id = 54  &
   location = 0.1944010006, -7.152783068E-003, -0.8442847826  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Frame.MARKER_54  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Frame.MARKER_55  &
   adams_id = 55  &
   location = 0.1944010006, -7.152783068E-003, -0.8442847826  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Frame.MARKER_55  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.Frame  &
   density = 5800.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.Frame  &
   color = COLOR_R030G030B030
!
!--------------------------------- RearWheel ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.RearWheel  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.RearWheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.RearWheel.PSMAR  &
   adams_id = 34  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.RearWheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.RearWheel.cm  &
   adams_id = 35  &
   location = -1.6404610749E-003, -1.8048075579E-004, -0.3241058485  &
   orientation = 90.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.RearWheel.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.RearWheel.MARKER_1  &
   adams_id = 1  &
   location = -1.6404610749E-003, -1.8048075579E-004, -0.3241058485  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.RearWheel.MARKER_1  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.RearWheel.MARKER_11  &
   adams_id = 11  &
   location = -1.6404610749E-003, -1.8048075579E-004, -0.3241058485  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .Bicycle_1.RearWheel.MARKER_11  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.RearWheel  &
   density = 499.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.RearWheel  &
   color = COLOR_R051G051B051
!
!----------------------------------- CogSet -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.CogSet  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.CogSet
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.CogSet.PSMAR  &
   adams_id = 36  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.CogSet.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.CogSet.cm  &
   adams_id = 37  &
   location = -1.6406027621E-003, 5.3187060658E-002, -0.3241060017  &
   orientation = 90.0003678894d, 67.7130177374d, 359.9997018939d
!
marker attributes  &
   marker_name = .Bicycle_1.CogSet.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.CogSet.MARKER_2  &
   adams_id = 2  &
   location = -1.6404610749E-003, -1.8048075579E-004, -0.3241058485  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.CogSet.MARKER_2  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.CogSet  &
   density = 7240.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.CogSet  &
   color = COLOR_R145G145B145
!
!--------------------------------- Crank_Arm ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.Crank_Arm  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.Crank_Arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.Crank_Arm.PSMAR  &
   adams_id = 38  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Crank_Arm.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Crank_Arm.cm  &
   adams_id = 39  &
   location = 0.3667522807, -7.6981134732E-002, -0.346027832  &
   orientation = 102.5916891665d, 45.9873637111d, 351.1763723551d
!
marker attributes  &
   marker_name = .Bicycle_1.Crank_Arm.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Crank_Arm.MARKER_9  &
   adams_id = 9  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Crank_Arm.MARKER_9  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.Crank_Arm  &
   density = 2466.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.Crank_Arm  &
   color = COLOR_R209G209B209
!
!-------------------------------- Crank_Arm_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.Crank_Arm_2  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.Crank_Arm_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.Crank_Arm_2.PSMAR  &
   adams_id = 40  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Crank_Arm_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Crank_Arm_2.cm  &
   adams_id = 41  &
   location = 0.4774227068, 7.6981184632E-002, -0.2364720803  &
   orientation = 102.5917334711d, 45.987158535d, 351.179249265d
!
marker attributes  &
   marker_name = .Bicycle_1.Crank_Arm_2.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Crank_Arm_2.MARKER_7  &
   adams_id = 7  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Crank_Arm_2.MARKER_7  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.Crank_Arm_2  &
   density = 2466.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.Crank_Arm_2  &
   color = COLOR_R209G209B209
!
!-------------------------------- ChainRing_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.ChainRing_2  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ChainRing_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_2.PSMAR  &
   adams_id = 42  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_2.cm  &
   adams_id = 43  &
   location = 0.4220876353, 5.3087794935E-002, -0.2912500994  &
   orientation = 89.9999999642d, 133.790036618d, 359.999999906d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_2.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_2.MARKER_4  &
   adams_id = 4  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_2.MARKER_4  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_2.MARKER_5  &
   adams_id = 5  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_2.MARKER_5  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.ChainRing_2  &
   density = 5291.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.ChainRing_2  &
   color = COLOR_R145G145B145
!
!-------------------------------- ChainRing_1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.ChainRing_1  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ChainRing_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_1.PSMAR  &
   adams_id = 44  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_1.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_1.cm  &
   adams_id = 45  &
   location = 0.4220876354, 5.9622392231E-002, -0.2912500989  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_1.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_1.MARKER_3  &
   adams_id = 3  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_1.MARKER_3  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.ChainRing_1  &
   density = 5291.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.ChainRing_1  &
   color = COLOR_R145G145B145
!
!-------------------------------- ChainRing_3 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.ChainRing_3  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ChainRing_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_3.PSMAR  &
   adams_id = 46  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_3.cm  &
   adams_id = 47  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 89.9999988783d, 133.7834525898d, 359.9999997403d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_3.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_3.MARKER_6  &
   adams_id = 6  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_3.MARKER_6  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_3.MARKER_8  &
   adams_id = 8  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_3.MARKER_8  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_3.MARKER_10  &
   adams_id = 10  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_3.MARKER_10  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.ChainRing_3.MARKER_16  &
   adams_id = 16  &
   location = 0.4220876398, 4.9010615607E-002, -0.2912501002  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .Bicycle_1.ChainRing_3.MARKER_16  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.ChainRing_3  &
   density = 5291.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.ChainRing_3  &
   color = COLOR_R145G145B145
!
!--------------------------------- Handlebar ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.Handlebar  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.Handlebar
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.Handlebar.PSMAR  &
   adams_id = 48  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Handlebar.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Handlebar.cm  &
   adams_id = 49  &
   location = 0.9409762351, -2.037621316E-006, -0.7530776059  &
   orientation = 89.9992241578d, 6.8817596347d, 270.000546236d
!
marker attributes  &
   marker_name = .Bicycle_1.Handlebar.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Handlebar.MARKER_14  &
   adams_id = 14  &
   location = 1.0585147328, -2.6198731749E-005, -0.3243858888  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Handlebar.MARKER_14  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.Handlebar.MARKER_17  &
   adams_id = 17  &
   location = 0.8676484604, 0.0, -0.8866634001  &
   orientation = 90.0d, 15.9165866039d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.Handlebar.MARKER_17  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.Handlebar  &
   density = 1605.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.Handlebar  &
   color = COLOR_R209G209B209
!
!--------------------------------- FrontWheel ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Bicycle_1.FrontWheel  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.FrontWheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Bicycle_1.FrontWheel.PSMAR  &
   adams_id = 50  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.FrontWheel.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Bicycle_1.FrontWheel.cm  &
   adams_id = 51  &
   location = 1.0585147328, -2.6198731749E-005, -0.3243858888  &
   orientation = 90.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .Bicycle_1.FrontWheel.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .Bicycle_1.FrontWheel.MARKER_13  &
   adams_id = 13  &
   location = 1.0585147328, -2.6198731749E-005, -0.3243858888  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .Bicycle_1.FrontWheel.MARKER_13  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Bicycle_1.FrontWheel  &
   density = 499.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Bicycle_1.FrontWheel  &
   color = COLOR_R051G051B051
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "bicyclePlant_1_v2015.xmt_txt"  &
   model_name = .Bicycle_1
!
geometry attributes  &
   geometry_name = .Bicycle_1.Frame.SOLID1  &
   color = COLOR_R030G030B030
!
geometry attributes  &
   geometry_name = .Bicycle_1.RearWheel.SOLID2  &
   color = COLOR_R051G051B051
!
geometry attributes  &
   geometry_name = .Bicycle_1.CogSet.SOLID3  &
   color = COLOR_R145G145B145
!
geometry attributes  &
   geometry_name = .Bicycle_1.Crank_Arm.SOLID4  &
   color = COLOR_R209G209B209
!
geometry attributes  &
   geometry_name = .Bicycle_1.Crank_Arm_2.SOLID5  &
   color = COLOR_R209G209B209
!
geometry attributes  &
   geometry_name = .Bicycle_1.ChainRing_2.SOLID6  &
   color = COLOR_R145G145B145
!
geometry attributes  &
   geometry_name = .Bicycle_1.ChainRing_1.SOLID7  &
   color = COLOR_R145G145B145
!
geometry attributes  &
   geometry_name = .Bicycle_1.ChainRing_3.SOLID8  &
   color = COLOR_R145G145B145
!
geometry attributes  &
   geometry_name = .Bicycle_1.Handlebar.SOLID9  &
   color = COLOR_R209G209B209
!
geometry attributes  &
   geometry_name = .Bicycle_1.FrontWheel.SOLID10  &
   color = COLOR_R051G051B051
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .Bicycle_1.Contact_1  &
   adams_id = 1  &
   i_geometry_name = .Bicycle_1.RearWheel.SOLID2  &
   j_geometry_name = .Bicycle_1.ground.BOX_12  &
   stiffness = 1.0E+008  &
   damping = 1.0E+004  &
   exponent = 2.2  &
   dmax = 1.0E-004  &
   coulomb_friction = dynamics_only  &
   mu_static = 0.72  &
   mu_dynamic = 0.72  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Bicycle_1.Contact_2  &
   adams_id = 2  &
   i_geometry_name = .Bicycle_1.FrontWheel.SOLID10  &
   j_geometry_name = .Bicycle_1.ground.BOX_12  &
   stiffness = 1.0E+008  &
   damping = 1.0E+004  &
   exponent = 2.2  &
   dmax = 1.0E-004  &
   coulomb_friction = dynamics_only  &
   mu_static = 0.72  &
   mu_dynamic = 0.72  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Bicycle_1.Contact_3  &
   adams_id = 3  &
   i_geometry_name = .Bicycle_1.Frame.SOLID1  &
   j_geometry_name = .Bicycle_1.ground.BOX_12  &
   stiffness = 1.0E+008  &
   damping = 1.0E+004  &
   exponent = 2.2  &
   dmax = 1.0E-004  &
   coulomb_friction = dynamics_only  &
   mu_static = 0.6  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Bicycle_1.Contact_4  &
   adams_id = 4  &
   i_geometry_name = .Bicycle_1.Handlebar.SOLID9  &
   j_geometry_name = .Bicycle_1.ground.BOX_12  &
   stiffness = 1.0E+008  &
   damping = 1.0E+004  &
   exponent = 2.2  &
   dmax = 1.0E-004  &
   coulomb_friction = dynamics_only  &
   mu_static = 0.6  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Bicycle_1.Contact_5  &
   adams_id = 5  &
   i_geometry_name = .Bicycle_1.Crank_Arm_2.SOLID5  &
   j_geometry_name = .Bicycle_1.ground.BOX_12  &
   stiffness = 1.0E+008  &
   damping = 1.0E+004  &
   exponent = 2.2  &
   dmax = 1.0E-004  &
   coulomb_friction = dynamics_only  &
   mu_static = 0.6  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Bicycle_1.Contact_6  &
   adams_id = 6  &
   i_geometry_name = .Bicycle_1.Crank_Arm.SOLID4  &
   j_geometry_name = .Bicycle_1.ground.BOX_12  &
   stiffness = 1.0E+008  &
   damping = 1.0E+004  &
   exponent = 2.2  &
   dmax = 1.0E-004  &
   coulomb_friction = dynamics_only  &
   mu_static = 0.6  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Bicycle_1.Contact_7  &
   adams_id = 7  &
   i_geometry_name = .Bicycle_1.ChainRing_1.SOLID7  &
   j_geometry_name = .Bicycle_1.ground.BOX_12  &
   stiffness = 1.0E+008  &
   damping = 1.0E+004  &
   exponent = 2.2  &
   dmax = 1.0E-004  &
   coulomb_friction = dynamics_only  &
   mu_static = 0.6  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Bicycle_1.Contact_8  &
   adams_id = 8  &
   i_geometry_name = .Bicycle_1.ChainRing_2.SOLID6  &
   j_geometry_name = .Bicycle_1.ground.BOX_12  &
   stiffness = 1.0E+008  &
   damping = 1.0E+004  &
   exponent = 2.2  &
   dmax = 1.0E-004  &
   coulomb_friction = dynamics_only  &
   mu_static = 0.6  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint fixed  &
   joint_name = .Bicycle_1.Fixed_1  &
   adams_id = 1  &
   i_marker_name = .Bicycle_1.RearWheel.MARKER_1  &
   j_marker_name = .Bicycle_1.CogSet.MARKER_2
!
constraint attributes  &
   constraint_name = .Bicycle_1.Fixed_1  &
   visibility = on  &
   name_visibility = on
!
constraint create joint fixed  &
   joint_name = .Bicycle_1.Fixed_2  &
   adams_id = 2  &
   i_marker_name = .Bicycle_1.ChainRing_1.MARKER_3  &
   j_marker_name = .Bicycle_1.ChainRing_2.MARKER_4
!
constraint attributes  &
   constraint_name = .Bicycle_1.Fixed_2  &
   visibility = on  &
   name_visibility = on
!
constraint create joint fixed  &
   joint_name = .Bicycle_1.Fixed_3  &
   adams_id = 3  &
   i_marker_name = .Bicycle_1.ChainRing_2.MARKER_5  &
   j_marker_name = .Bicycle_1.ChainRing_3.MARKER_6
!
constraint attributes  &
   constraint_name = .Bicycle_1.Fixed_3  &
   visibility = on  &
   name_visibility = on
!
constraint create joint fixed  &
   joint_name = .Bicycle_1.Fixed_4  &
   adams_id = 4  &
   i_marker_name = .Bicycle_1.Crank_Arm_2.MARKER_7  &
   j_marker_name = .Bicycle_1.ChainRing_3.MARKER_8
!
constraint attributes  &
   constraint_name = .Bicycle_1.Fixed_4  &
   visibility = on  &
   name_visibility = on
!
constraint create joint fixed  &
   joint_name = .Bicycle_1.Fixed_5  &
   adams_id = 5  &
   i_marker_name = .Bicycle_1.Crank_Arm.MARKER_9  &
   j_marker_name = .Bicycle_1.ChainRing_3.MARKER_10
!
constraint attributes  &
   constraint_name = .Bicycle_1.Fixed_5  &
   visibility = on  &
   name_visibility = on
!
constraint create joint revolute  &
   joint_name = .Bicycle_1.Revolute_1  &
   adams_id = 6  &
   i_marker_name = .Bicycle_1.RearWheel.MARKER_11  &
   j_marker_name = .Bicycle_1.Frame.MARKER_12
!
constraint attributes  &
   constraint_name = .Bicycle_1.Revolute_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Bicycle_1.Revolute_2  &
   adams_id = 7  &
   i_marker_name = .Bicycle_1.FrontWheel.MARKER_13  &
   j_marker_name = .Bicycle_1.Handlebar.MARKER_14
!
constraint attributes  &
   constraint_name = .Bicycle_1.Revolute_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Bicycle_1.Revolute_3  &
   adams_id = 8  &
   i_marker_name = .Bicycle_1.Frame.MARKER_15  &
   j_marker_name = .Bicycle_1.ChainRing_3.MARKER_16
!
constraint attributes  &
   constraint_name = .Bicycle_1.Revolute_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Bicycle_1.Revolute_4  &
   adams_id = 9  &
   i_marker_name = .Bicycle_1.Handlebar.MARKER_17  &
   j_marker_name = .Bicycle_1.Frame.MARKER_18
!
constraint attributes  &
   constraint_name = .Bicycle_1.Revolute_4  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like friction  &
   friction_name = .Bicycle_1.Friction_1  &
   adams_id = 1  &
   joint_name = .Bicycle_1.Revolute_1  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 1.0  &
   bending_reaction_arm = 1.0  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   max_stiction_deformation = 1.0E-002  &
   friction_torque_preload = 0.0  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force create element_like friction  &
   friction_name = .Bicycle_1.Friction_2  &
   adams_id = 2  &
   joint_name = .Bicycle_1.Revolute_2  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 1.0  &
   bending_reaction_arm = 1.0  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   max_stiction_deformation = 1.0E-002  &
   friction_torque_preload = 0.0  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force create element_like friction  &
   friction_name = .Bicycle_1.Friction_3  &
   adams_id = 3  &
   joint_name = .Bicycle_1.Revolute_3  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 1.0  &
   bending_reaction_arm = 1.0  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   max_stiction_deformation = 1.0E-002  &
   friction_torque_preload = 0.0  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force create element_like friction  &
   friction_name = .Bicycle_1.Friction_4  &
   adams_id = 4  &
   joint_name = .Bicycle_1.Revolute_4  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 1.0  &
   bending_reaction_arm = 1.0  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   max_stiction_deformation = 1.0E-002  &
   friction_torque_preload = 0.0  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force create direct single_component_force  &
   single_component_force_name = .Bicycle_1.External_Force  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .Bicycle_1.Frame.MARKER_54  &
   j_marker_name = .Bicycle_1.Frame.MARKER_55  &
   action_only = on  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Bicycle_1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=5.0 number_of_steps=500 model_name=.Bicycle_1"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .Bicycle_1.forward_motion  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .Bicycle_1.steering_motion  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .Bicycle_1.bicyclePlant_1_v2015  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.i_marker  &
   object_value = (.Bicycle_1.RearWheel.MARKER_11)
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.j_marker  &
   object_value = (.Bicycle_1.Frame.MARKER_12)
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.constraint  &
   object_value = (.Bicycle_1.Revolute_1)
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r3_type  &
   integer_value = 2
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r3_func  &
   string_value = "VARVAL(RearWheel_AngSpeed)"
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.forward_motion.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .Bicycle_1.forward_motion
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.i_marker  &
   object_value = (.Bicycle_1.Handlebar.MARKER_17)
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.j_marker  &
   object_value = (.Bicycle_1.Frame.MARKER_18)
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.constraint  &
   object_value = (.Bicycle_1.Revolute_4)
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r3_type  &
   integer_value = 1
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r3_func  &
   string_value = "VARVAL(Steering_Angle)"
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Bicycle_1.steering_motion.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .Bicycle_1.steering_motion
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.input_channels  &
   object_value =   &
      .Bicycle_1.RearWheel_AngSpeed,  &
      .Bicycle_1.Steering_Angle,  &
      .Bicycle_1.Disturbance
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.output_channels  &
   object_value = .Bicycle_1.Lean_Angle
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.file_name  &
   string_value = "bicyclePlant_1_v2015"
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.host  &
   string_value = "baqumau-PC"
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .Bicycle_1.bicyclePlant_1_v2015.output_rate  &
   integer_value = 1
!
ude modify instance  &
   instance_name = .Bicycle_1.bicyclePlant_1_v2015
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Bicycle_1.ground
!
geometry create shape force  &
   force_name = .Bicycle_1.SFORCE_4_force_graphic_1  &
   adams_id = 43  &
   force_element_name = .Bicycle_1.External_Force  &
   applied_at_marker_name = .Bicycle_1.Frame.MARKER_54
!
geometry create shape gcontact  &
   contact_force_name = .Bicycle_1.GCONTACT_25  &
   adams_id = 25  &
   contact_element_name = .Bicycle_1.Contact_1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Bicycle_1.GCONTACT_25  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Bicycle_1.GCONTACT_26  &
   adams_id = 26  &
   contact_element_name = .Bicycle_1.Contact_2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Bicycle_1.GCONTACT_26  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Bicycle_1.GCONTACT_29  &
   adams_id = 29  &
   contact_element_name = .Bicycle_1.Contact_3  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Bicycle_1.GCONTACT_29  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Bicycle_1.GCONTACT_32  &
   adams_id = 32  &
   contact_element_name = .Bicycle_1.Contact_4  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Bicycle_1.GCONTACT_32  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Bicycle_1.GCONTACT_35  &
   adams_id = 35  &
   contact_element_name = .Bicycle_1.Contact_5  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Bicycle_1.GCONTACT_35  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Bicycle_1.GCONTACT_38  &
   adams_id = 38  &
   contact_element_name = .Bicycle_1.Contact_6  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Bicycle_1.GCONTACT_38  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Bicycle_1.GCONTACT_39  &
   adams_id = 39  &
   contact_element_name = .Bicycle_1.Contact_7  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Bicycle_1.GCONTACT_39  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Bicycle_1.GCONTACT_40  &
   adams_id = 40  &
   contact_element_name = .Bicycle_1.Contact_8  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Bicycle_1.GCONTACT_40  &
   color = RED
!
!---------------------------------- Couplers ----------------------------------!
!
!
constraint create complex_joint coupler  &
   coupler_name = .Bicycle_1.Coupler_1  &
   adams_id = 1  &
   joint_name =  &
      .Bicycle_1.Revolute_1,  &
      .Bicycle_1.Revolute_3  &
   type_of_freedom = rot_rot  &
   motion_multipliers = 1.0, 1.0
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = 9.80665
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .Bicycle_1.Rear_Wheel_Speed  &
   from_first = no  &
   object = .Bicycle_1.Revolute_1  &
   characteristic = angular_velocity  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Bicycle_1.Rear_Wheel_Speed  &
   color = WHITE
!
measure create object  &
   measure_name = .Bicycle_1.Steering  &
   from_first = no  &
   object = .Bicycle_1.Revolute_4  &
   coordinate_rframe = .Bicycle_1.Handlebar.MARKER_17  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Bicycle_1.Steering  &
   color = WHITE
!
measure create orient  &
   measure_name = .Bicycle_1.Tilt  &
   to_frame = .Bicycle_1.RearWheel.MARKER_1  &
   characteristic = yaw_pitch_roll  &
   component = angle_3_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Bicycle_1.Tilt  &
   color = WHITE
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Bicycle_1._model  &
   string_value = ".Bicycle_1"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .Bicycle_1.RearWheel_AngSpeed  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Bicycle_1.Steering_Angle  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Bicycle_1.Lean_Angle  &
   function = "ROLL(.Bicycle_1.Frame.MARKER_12,.Bicycle_1.ground.MARKER_19)"
!
data_element modify variable  &
   variable_name = .Bicycle_1.Disturbance  &
   function = "0"
!
force modify direct single_component_force  &
   single_component_force_name = .Bicycle_1.External_Force  &
   function = "VARVAL(.Bicycle_1.Disturbance)"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Bicycle_1.forward_motion
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Bicycle_1.steering_motion
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Bicycle_1.bicyclePlant_1_v2015
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape block  &
   block_name = .Bicycle_1.ground.BOX_12  &
   diag_corner_coords =   &
      (100meter),  &
      (50meter),  &
      (1.0E-002meter)
!
material modify  &
   material_name = .Bicycle_1.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
geometry modify shape force  &
   force_name = .Bicycle_1.SFORCE_4_force_graphic_1  &
   applied_at_marker_name = (.Bicycle_1.External_Force.i)
!
model display  &
   model_name = Bicycle_1
