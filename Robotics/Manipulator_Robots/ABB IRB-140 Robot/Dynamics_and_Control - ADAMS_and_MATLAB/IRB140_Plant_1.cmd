!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = rad  &
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
if condition = (! db_exists(".colors.COLOR_R227G105B033"))
!
color create  &
   color_name = .colors.COLOR_R227G105B033  &
   red_component = 0.890196085  &
   blue_component = 0.1294117719  &
   green_component = 0.4117647111
!
else 
!
color modify  &
   color_name = .colors.COLOR_R227G105B033  &
   red_component = 0.890196085  &
   blue_component = 0.1294117719  &
   green_component = 0.4117647111
!
end 
!
if condition = (! db_exists(".colors.COLOR_R227G105B032"))
!
color create  &
   color_name = .colors.COLOR_R227G105B032  &
   red_component = 0.890196085  &
   blue_component = 0.1254902035  &
   green_component = 0.4117647111
!
else 
!
color modify  &
   color_name = .colors.COLOR_R227G105B032  &
   red_component = 0.890196085  &
   blue_component = 0.1254902035  &
   green_component = 0.4117647111
!
end 
!
if condition = (! db_exists(".colors.COLOR_R064G064B064"))
!
color create  &
   color_name = .colors.COLOR_R064G064B064  &
   red_component = 0.250980407  &
   blue_component = 0.250980407  &
   green_component = 0.250980407
!
else 
!
color modify  &
   color_name = .colors.COLOR_R064G064B064  &
   red_component = 0.250980407  &
   blue_component = 0.250980407  &
   green_component = 0.250980407
!
end 
!
if condition = (! db_exists(".colors.COLOR_R192G192B192"))
!
color create  &
   color_name = .colors.COLOR_R192G192B192  &
   red_component = 0.7529411912  &
   blue_component = 0.7529411912  &
   green_component = 0.7529411912
!
else 
!
color modify  &
   color_name = .colors.COLOR_R192G192B192  &
   red_component = 0.7529411912  &
   blue_component = 0.7529411912  &
   green_component = 0.7529411912
!
end 
!
if condition = (! db_exists(".colors.COLOR_R255G255B192"))
!
color create  &
   color_name = .colors.COLOR_R255G255B192  &
   red_component = 1.0  &
   blue_component = 0.7529411912  &
   green_component = 1.0
!
else 
!
color modify  &
   color_name = .colors.COLOR_R255G255B192  &
   red_component = 1.0  &
   blue_component = 0.7529411912  &
   green_component = 1.0
!
end 
!
if condition = (! db_exists(".colors.COLOR_R203G210B239"))
!
color create  &
   color_name = .colors.COLOR_R203G210B239  &
   red_component = 0.7960784435  &
   blue_component = 0.9372549057  &
   green_component = 0.8235294223
!
else 
!
color modify  &
   color_name = .colors.COLOR_R203G210B239  &
   red_component = 0.7960784435  &
   blue_component = 0.9372549057  &
   green_component = 0.8235294223
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
   size_of_icons = 5.0E-02  &
   spacing_for_grid = 1.0
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = ABB_IRB_140
!
model attributes  &
   model_name = .ABB_IRB_140  &
   visibility = on
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Theta1  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Theta2  &
   adams_id = 8  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Theta3  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Theta4  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Theta5  &
   adams_id = 11  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Theta6  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Torque1  &
   adams_id = 13  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Torque2  &
   adams_id = 14  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Torque3  &
   adams_id = 15  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Torque4  &
   adams_id = 16  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Torque5  &
   adams_id = 17  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Torque6  &
   adams_id = 18  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Disturbance1  &
   adams_id = 19  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Disturbance2  &
   adams_id = 20  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.dTheta1  &
   adams_id = 21  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.dTheta2  &
   adams_id = 22  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.dTheta3  &
   adams_id = 23  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.dTheta4  &
   adams_id = 24  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.dTheta5  &
   adams_id = 25  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.dTheta6  &
   adams_id = 26  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .ABB_IRB_140.Disturbance3  &
   adams_id = 33  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .ABB_IRB_140.Inputs  &
   adams_id = 1  &
   variable_name =  &
      .ABB_IRB_140.Torque1,  &
      .ABB_IRB_140.Torque2,  &
      .ABB_IRB_140.Torque3,  &
      .ABB_IRB_140.Torque4,  &
      .ABB_IRB_140.Torque5,  &
      .ABB_IRB_140.Torque6,  &
      .ABB_IRB_140.Disturbance1,  &
      .ABB_IRB_140.Disturbance2,  &
      .ABB_IRB_140.Disturbance3
!
data_element create plant output  &
   plant_output_name = .ABB_IRB_140.Outputs  &
   adams_id = 1  &
   variable_name =  &
      .ABB_IRB_140.Theta1,  &
      .ABB_IRB_140.Theta2,  &
      .ABB_IRB_140.Theta3,  &
      .ABB_IRB_140.Theta4,  &
      .ABB_IRB_140.Theta5,  &
      .ABB_IRB_140.Theta6,  &
      .ABB_IRB_140.dTheta1,  &
      .ABB_IRB_140.dTheta2,  &
      .ABB_IRB_140.dTheta3,  &
      .ABB_IRB_140.dTheta4,  &
      .ABB_IRB_140.dTheta5,  &
      .ABB_IRB_140.dTheta6
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .ABB_IRB_140.steel  &
   adams_id = 1  &
   density = 7801.0  &
   youngs_modulus = 2.07E+11  &
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
   default_coordinate_system = .ABB_IRB_140.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.ground.MARKER_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.ground  &
   material_type = .ABB_IRB_140.steel
!
part attributes  &
   part_name = .ABB_IRB_140.ground  &
   name_visibility = off
!
!--------------------------- IRB140___M2004C_BASE_ ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_BASE_  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_BASE_
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_BASE_.PSMAR  &
   adams_id = 25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_BASE_.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_BASE_.MARKER_1  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_BASE_.MARKER_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_BASE_.cm  &
   adams_id = 26  &
   location = -8.2039325169E-02, 4.0202864022E-04, 5.9924734348E-02  &
   orientation = 4.7132366971, 1.5192588006, 1.5813227024
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_BASE_.cm  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_BASE_  &
   density = 967.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_BASE_  &
   color = COLOR_R227G105B033  &
   name_visibility = off
!
!--------------------------- IRB140___M2004C_LINK1_ ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1_  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK1_
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.PSMAR  &
   adams_id = 27  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.cm  &
   adams_id = 28  &
   location = 2.9076891913E-02, 4.420917478E-02, 0.2606986706  &
   orientation = 2.4312337816, 0.7744933033, 3.9437998622
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.cm  &
   color = COLOR_R255G255B192  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_4  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_5  &
   adams_id = 5  &
   location = 7.0E-02, 0.0, 0.352  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_7  &
   adams_id = 7  &
   location = -9.1313016872E-02, 0.1117356951, 0.3406151744  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_17  &
   adams_id = 17  &
   location = 0.1349092879, -2.9133705432E-02, 0.2211061471  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_17  &
   color = COLOR_R192G192B192  &
   visibility = on
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_85  &
   adams_id = 85  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_86  &
   adams_id = 86  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1_  &
   density = 2327.7
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1_  &
   color = COLOR_R227G105B033  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK1__2 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK1__2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2.PSMAR  &
   adams_id = 29  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2.cm  &
   adams_id = 30  &
   location = -9.1313016872E-02, 0.1117356951, 0.3406151744  &
   orientation = 1.5421875363, 3.1217882081, 6.263672347
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2.cm  &
   color = COLOR_R255G255B192  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2.MARKER_8  &
   adams_id = 8  &
   location = -9.1313016872E-02, 0.1117356951, 0.3406151744  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2  &
   mass = 1.0936340654  &
   center_of_mass_marker = .ABB_IRB_140.IRB140___M2004C_LINK1__2.cm  &
   ixx = 4.3024833325E-03  &
   iyy = 4.0766551526E-03  &
   izz = 1.0564206711E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2  &
   color = COLOR_R227G105B032  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK1__3 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK1__3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.PSMAR  &
   adams_id = 31  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.cm  &
   adams_id = 32  &
   location = 0.1349092879, -2.9133705432E-02, 0.2211061471  &
   orientation = 1.0835040008E-02, 1.5870473831, 0.6006748187
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.cm  &
   color = COLOR_R255G255B192  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.MARKER_18  &
   adams_id = 18  &
   location = 0.1349092879, -2.9133705432E-02, 0.2211061471  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3  &
   mass = 1.0945327248  &
   center_of_mass_marker = .ABB_IRB_140.IRB140___M2004C_LINK1__3.cm  &
   ixx = 4.3079858443E-03  &
   iyy = 4.0813915166E-03  &
   izz = 1.0579886486E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3  &
   color = COLOR_R227G105B032  &
   name_visibility = off
!
!--------------------------- IRB140___M2004C_LINK2_ ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK2_  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK2_
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.PSMAR  &
   adams_id = 33  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_6  &
   adams_id = 6  &
   location = 7.0E-02, 0.0, 0.352  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_9  &
   adams_id = 9  &
   location = 7.0E-02, 0.0, 0.712  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_9  &
   visibility = on
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.cm  &
   adams_id = 34  &
   location = 6.0272232866E-02, -9.2433716544E-02, 0.5502880125  &
   orientation = 8.4468726815E-02, 0.1975523994, 6.2075239904
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_87  &
   adams_id = 87  &
   location = 7.0E-02, 0.0, 0.352  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_88  &
   adams_id = 88  &
   location = 7.0E-02, 0.0, 0.352  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_101  &
   adams_id = 101  &
   location = 1.8851172238E-02, -8.5118081606E-02, 0.623070611  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_102  &
   adams_id = 102  &
   location = 1.8851172238E-02, -8.5118081606E-02, 0.623070611  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK2_  &
   density = 3298.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK2_  &
   color = COLOR_R227G105B032  &
   name_visibility = off
!
!--------------------------- IRB140___M2004C_LINK3_ ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3_  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK3_
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3_.PSMAR  &
   adams_id = 35  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3_.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3_.MARKER_19  &
   adams_id = 19  &
   location = 8.8387328495E-02, 7.6043208137E-03, 0.706  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3_.cm  &
   adams_id = 36  &
   location = 0.2494293628, 5.1339154005E-02, 0.7061083147  &
   orientation = 1.5698728362, 1.5874607596, 7.1037483438E-04
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3_.cm  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3_  &
   density = 1050.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3_  &
   color = COLOR_R064G064B064  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK3__2 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK3__2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.PSMAR  &
   adams_id = 37  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.cm  &
   adams_id = 38  &
   location = -6.6492405094E-02, 8.6684746332E-03, 0.7111087415  &
   orientation = 6.2822618271, 1.5548300025, 6.2824742876
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.MARKER_21  &
   adams_id = 21  &
   location = -6.6492405094E-02, 8.6684746332E-03, 0.7111087415  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.MARKER_89  &
   adams_id = 89  &
   location = 7.0E-02, 0.0, 0.712  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.MARKER_90  &
   adams_id = 90  &
   location = 7.0E-02, 0.0, 0.712  &
   orientation = 0.0, 1.5707963268, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2  &
   density = 1050.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2  &
   color = COLOR_R064G064B064  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK3__3 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK3__3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.PSMAR  &
   adams_id = 39  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_10  &
   adams_id = 10  &
   location = 7.0E-02, 0.0, 0.712  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_11  &
   adams_id = 11  &
   location = 0.324, 0.0, 0.712  &
   orientation = 1.5707963268, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_20  &
   adams_id = 20  &
   location = 8.8387328495E-02, 7.6043208137E-03, 0.706  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_20  &
   visibility = on
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.cm  &
   adams_id = 40  &
   location = 8.8387328495E-02, 7.6043208137E-03, 0.7062916156  &
   orientation = 1.5219622999, 1.6074818991, 5.4516852732E-02
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_22  &
   adams_id = 22  &
   location = -6.6492405094E-02, 8.6684746332E-03, 0.7111087415  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_24  &
   adams_id = 24  &
   location = 0.2575706372, -5.1339154005E-02, 0.7061083147  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3  &
   density = 2267.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3  &
   color = COLOR_R227G105B032  &
   visibility = on  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK3__4 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK3__4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4.PSMAR  &
   adams_id = 41  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4.cm  &
   adams_id = 42  &
   location = 0.2575706372, -5.1339154005E-02, 0.7061083147  &
   orientation = 1.5698728362, 1.554131894, 6.2824749323
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4.MARKER_23  &
   adams_id = 23  &
   location = 0.2575706372, -5.1339154005E-02, 0.7061083147  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4  &
   density = 1050.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4  &
   color = COLOR_R064G064B064  &
   name_visibility = off
!
!--------------------------- IRB140___M2004C_LINK4_ ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4_  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK4_
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.PSMAR  &
   adams_id = 43  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.cm  &
   adams_id = 44  &
   location = 0.3986486952, -5.5536457867E-04, 0.7103033966  &
   orientation = 4.6540716671, 1.606354468, 1.5659647561
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.cm  &
   color = COLOR_R255G255B192  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_12  &
   adams_id = 12  &
   location = 0.324, 0.0, 0.712  &
   orientation = 1.5707963268, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_13  &
   adams_id = 13  &
   location = 0.45, 0.0, 0.712  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_59  &
   adams_id = 59  &
   location = 0.3986486952, -5.5536458784E-04, 0.7103033965  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_61  &
   adams_id = 61  &
   location = 0.35, 0.0, 0.712  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_63  &
   adams_id = 63  &
   location = 0.32275, 0.0, 0.7100879297  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_99  &
   adams_id = 99  &
   location = 0.4484770127, 6.2101553801E-04, 0.7120221155  &
   orientation = 2.6066051725E-02, 3.7692836323E-04, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_100  &
   adams_id = 100  &
   location = 0.4484770127, 6.2101553801E-04, 0.7120221155  &
   orientation = 2.6066051725E-02, 3.7692836323E-04, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4_  &
   density = 3700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4_  &
   color = COLOR_R227G105B032  &
   visibility = on  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK4__2 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK4__2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.PSMAR  &
   adams_id = 45  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.cm  &
   adams_id = 46  &
   location = 0.4500000346, -5.7795078185E-02, 0.7120000893  &
   orientation = 1.5707961668, 1.6686726031, 5.2122717428E-07
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.cm  &
   color = COLOR_R255G255B192  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.MARKER_64  &
   adams_id = 64  &
   location = 0.4500000346, -5.7795078185E-02, 0.7120000893  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.MARKER_97  &
   adams_id = 97  &
   location = 0.45, 6.6010878913E-02, 0.712  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.MARKER_98  &
   adams_id = 98  &
   location = 0.45, 6.6010878913E-02, 0.712  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2  &
   density = 3700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2  &
   color = COLOR_R227G105B032  &
   visibility = on  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK4__3 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK4__3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3.PSMAR  &
   adams_id = 47  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3.cm  &
   adams_id = 48  &
   location = 0.45, 6.6010878913E-02, 0.712  &
   orientation = 1.5707963268, 3.1415926536, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3.cm  &
   color = COLOR_R255G255B192  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3.MARKER_66  &
   adams_id = 66  &
   location = 0.45, 6.6010878913E-02, 0.712  &
   orientation = 0.0, 1.5707963268, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3  &
   density = 3700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3  &
   color = COLOR_R227G105B032  &
   visibility = on  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK4__4 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK4__4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4.PSMAR  &
   adams_id = 49  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4.cm  &
   adams_id = 50  &
   location = 0.40922705, 2.736267377E-10, 0.7119989297  &
   orientation = 1.6052656531, 2.6413101602E-05, 4.6779208619
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4.MARKER_58  &
   adams_id = 58  &
   location = 0.3986486952, -5.5536458784E-04, 0.7103033965  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4  &
   density = 3700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4  &
   color = COLOR_R255G255B192  &
   visibility = on  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK4__5 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK4__5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.PSMAR  &
   adams_id = 51  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.cm  &
   adams_id = 52  &
   location = 0.3061761452, -8.5270252532E-08, 0.7114516845  &
   orientation = 4.5236096023E-06, 1.5705382488, 7.6341540281E-03
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.cm  &
   color = COLOR_R255G255B192  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.MARKER_60  &
   adams_id = 60  &
   location = 0.35, 0.0, 0.712  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.MARKER_91  &
   adams_id = 91  &
   location = 0.32275, 0.0, 0.7100879297  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.MARKER_92  &
   adams_id = 92  &
   location = 0.32275, 0.0, 0.7100879297  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5  &
   density = 3700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5  &
   color = COLOR_R227G105B032  &
   visibility = on  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK4__6 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK4__6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6.PSMAR  &
   adams_id = 53  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6.cm  &
   adams_id = 54  &
   location = 0.32275, 0.0, 0.7100879297  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6.cm  &
   color = COLOR_R255G255B192  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6.MARKER_62  &
   adams_id = 62  &
   location = 0.32275, 0.0, 0.7100879297  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6  &
   density = 3700.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6  &
   color = COLOR_R227G105B032  &
   visibility = on  &
   name_visibility = off
!
!--------------------------- IRB140___M2004C_LINK5_ ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK5_  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK5_
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.PSMAR  &
   adams_id = 55  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_14  &
   adams_id = 14  &
   location = 0.45, 0.0, 0.712  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_15  &
   adams_id = 15  &
   location = 0.515, 0.0, 0.712  &
   orientation = 1.5707963268, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_65  &
   adams_id = 65  &
   location = 0.4500000346, -5.7795078185E-02, 0.7120000893  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_67  &
   adams_id = 67  &
   location = 0.45, 6.6010878913E-02, 0.712  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.cm  &
   adams_id = 76  &
   location = 0.4484774891, 6.2089231752E-04, 0.7120219603  &
   orientation = 4.7137860291, 3.0704286135, 3.1395897102
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_69  &
   adams_id = 69  &
   location = 0.470212298, -8.4994627845E-08, 0.6834993904  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_93  &
   adams_id = 93  &
   location = 0.4484770127, 6.2101553801E-04, 0.7120221155  &
   orientation = 2.6066051725E-02, 1.5711732552, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_94  &
   adams_id = 94  &
   location = 0.4484770127, 6.2101553801E-04, 0.7120221155  &
   orientation = 2.6066051725E-02, 1.5711732552, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK5_  &
   density = 6915.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK5_  &
   color = COLOR_R227G105B032  &
   name_visibility = off
!
!-------------------------- IRB140___M2004C_LINK5__2 --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK5__2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2.PSMAR  &
   adams_id = 56  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2.cm  &
   adams_id = 77  &
   location = 0.470212298, -8.4994627875E-08, 0.6834993904  &
   orientation = 3.1438634113, 0.4304481696, 3.1392431952
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2.MARKER_68  &
   adams_id = 68  &
   location = 0.470212298, -8.4994627845E-08, 0.6834993904  &
   orientation = 0.0, 1.5707963268, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2  &
   density = 6915.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2  &
   color = COLOR_R227G105B032  &
   name_visibility = off
!
!--------------------------- IRB140___M2004C_LINK6_ ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
part create rigid_body name_and_position  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK6_  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.IRB140___M2004C_LINK6_
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.PSMAR  &
   adams_id = 57  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_16  &
   adams_id = 16  &
   location = 0.515, 0.0, 0.712  &
   orientation = 1.5707963268, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.cm  &
   adams_id = 84  &
   location = 0.5020594288, 2.3878557481E-10, 0.7117749695  &
   orientation = 4.7123877992, 1.4270598259, 1.5708022718
!
marker attributes  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.cm  &
   name_visibility = off
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_95  &
   adams_id = 95  &
   location = 0.515, 0.0, 0.712  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_96  &
   adams_id = 96  &
   location = 0.515, 0.0, 0.712  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
part create rigid_body mass_properties  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK6_  &
   density = 1.9312E+04
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .ABB_IRB_140.IRB140___M2004C_LINK6_  &
   color = COLOR_R203G210B239  &
   name_visibility = off
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "IRB140_Plant_1.xmt_txt"  &
   model_name = .ABB_IRB_140
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_BASE_.SOLID1  &
   color = COLOR_R227G105B033
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.SOLID2  &
   color = COLOR_R227G105B033
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2.SOLID3  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.SOLID4  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.SOLID5  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK3_.SOLID6  &
   color = COLOR_R064G064B064
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.SOLID7  &
   color = COLOR_R064G064B064
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.SOLID8  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4.SOLID9  &
   color = COLOR_R064G064B064
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.SOLID10  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.SOLID11  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3.SOLID12  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4.SOLID13  &
   color = COLOR_R255G255B192
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.SOLID14  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6.SOLID15  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.SOLID16  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2.SOLID17  &
   color = COLOR_R227G105B032
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.SOLID18  &
   color = COLOR_R203G210B239
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_1  &
   adams_id = 1  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.SOLID8  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.SOLID5  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
force attributes  &
   force_name = .ABB_IRB_140.Cont_1  &
   visibility = on  &
   name_visibility = on
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_2  &
   adams_id = 10  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.SOLID5  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.SOLID4  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
force attributes  &
   force_name = .ABB_IRB_140.Cont_2  &
   visibility = on  &
   name_visibility = on
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_3  &
   adams_id = 3  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.SOLID18  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4.SOLID13  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
force attributes  &
   force_name = .ABB_IRB_140.Cont_3  &
   visibility = on  &
   name_visibility = on
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_4  &
   adams_id = 18  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.SOLID10  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.SOLID2  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_5  &
   adams_id = 5  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.SOLID10  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_BASE_.SOLID1  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
force attributes  &
   force_name = .ABB_IRB_140.Cont_5  &
   visibility = on  &
   name_visibility = on
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_6  &
   adams_id = 7  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.SOLID5  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_BASE_.SOLID1  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
force attributes  &
   force_name = .ABB_IRB_140.Cont_6  &
   visibility = on  &
   name_visibility = on
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_7  &
   adams_id = 9  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.SOLID8  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_BASE_.SOLID1  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
force attributes  &
   force_name = .ABB_IRB_140.Cont_7  &
   visibility = on  &
   name_visibility = on
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_8  &
   adams_id = 16  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.SOLID18  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.SOLID4  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
contact create  &
   contact_name = .ABB_IRB_140.Cont_9  &
   adams_id = 17  &
   i_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.SOLID10  &
   j_geometry_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.SOLID4  &
   stiffness = 1.0E+11  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 2.3E-02  &
   mu_dynamic = 1.6E-02  &
   stiction_transition_velocity = 3.0E-02  &
   friction_transition_velocity = 6.0E-02
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_1  &
   adams_id = 1  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_BASE_.MARKER_1  &
   j_marker_name = .ABB_IRB_140.ground.MARKER_2
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_1  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .ABB_IRB_140.Joint_1  &
   adams_id = 2  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_BASE_.MARKER_3  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_4
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Joint_1  &
   visibility = on  &
   name_visibility = on
!
constraint create joint revolute  &
   joint_name = .ABB_IRB_140.Joint_2  &
   adams_id = 3  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_5  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_6
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Joint_2  &
   visibility = on  &
   name_visibility = on
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_2  &
   adams_id = 4  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_7  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__2.MARKER_8
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_2  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .ABB_IRB_140.Joint_3  &
   adams_id = 5  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_9  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_10
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Joint_3  &
   visibility = on  &
   name_visibility = on
!
constraint create joint revolute  &
   joint_name = .ABB_IRB_140.Joint_4  &
   adams_id = 6  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_11  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_12
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Joint_4  &
   visibility = on  &
   name_visibility = on
!
constraint create joint revolute  &
   joint_name = .ABB_IRB_140.Joint_5  &
   adams_id = 7  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_13  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_14
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Joint_5  &
   visibility = on  &
   name_visibility = on
!
constraint create joint revolute  &
   joint_name = .ABB_IRB_140.Joint_6  &
   adams_id = 8  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_15  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_16
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Joint_6  &
   visibility = on  &
   name_visibility = on
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_3  &
   adams_id = 9  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_17  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1__3.MARKER_18
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_3  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_4  &
   adams_id = 10  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3_.MARKER_19  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_20
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_4  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_5  &
   adams_id = 11  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.MARKER_21  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_22
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_5  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_6  &
   adams_id = 12  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__4.MARKER_23  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_24
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_6  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_7  &
   adams_id = 13  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__4.MARKER_58  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_59
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_7  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_8  &
   adams_id = 14  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.MARKER_60  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_61
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_8  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_9  &
   adams_id = 15  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__6.MARKER_62  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_63
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_9  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_10  &
   adams_id = 16  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.MARKER_64  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_65
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_10  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_11  &
   adams_id = 17  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__3.MARKER_66  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_67
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_11  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .ABB_IRB_140.Fixed_12  &
   adams_id = 18  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5__2.MARKER_68  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_69
!
constraint attributes  &
   constraint_name = .ABB_IRB_140.Fixed_12  &
   visibility = off  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like friction  &
   friction_name = .ABB_IRB_140.Friction_1  &
   adams_id = 1  &
   joint_name = .ABB_IRB_140.Joint_1  &
   mu_static = 5.0E-02  &
   mu_dynamic = 3.0E-02  &
   friction_arm = 0.1  &
   bending_reaction_arm = 0.1  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   transition_velocity_coefficient = 1.5  &
   max_stiction_deformation = 1.0E-02  &
   friction_torque_preload = 3.0E-02  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .ABB_IRB_140.Friction_1  &
   visibility = on  &
   name_visibility = on
!
force create element_like friction  &
   friction_name = .ABB_IRB_140.Friction_2  &
   adams_id = 2  &
   joint_name = .ABB_IRB_140.Joint_2  &
   mu_static = 5.0E-02  &
   mu_dynamic = 3.0E-02  &
   friction_arm = 0.1  &
   bending_reaction_arm = 0.1  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   transition_velocity_coefficient = 1.5  &
   max_stiction_deformation = 1.0E-02  &
   friction_torque_preload = 3.0E-02  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .ABB_IRB_140.Friction_2  &
   visibility = on  &
   name_visibility = on
!
force create element_like friction  &
   friction_name = .ABB_IRB_140.Friction_3  &
   adams_id = 3  &
   joint_name = .ABB_IRB_140.Joint_3  &
   mu_static = 5.0E-02  &
   mu_dynamic = 3.0E-02  &
   friction_arm = 0.1  &
   bending_reaction_arm = 0.1  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   transition_velocity_coefficient = 1.5  &
   max_stiction_deformation = 1.0E-02  &
   friction_torque_preload = 3.0E-02  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .ABB_IRB_140.Friction_3  &
   visibility = on  &
   name_visibility = on
!
force create element_like friction  &
   friction_name = .ABB_IRB_140.Friction_4  &
   adams_id = 4  &
   joint_name = .ABB_IRB_140.Joint_4  &
   mu_static = 5.0E-02  &
   mu_dynamic = 3.0E-02  &
   friction_arm = 0.1  &
   bending_reaction_arm = 0.1  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   transition_velocity_coefficient = 1.5  &
   max_stiction_deformation = 1.0E-02  &
   friction_torque_preload = 3.0E-02  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .ABB_IRB_140.Friction_4  &
   visibility = on  &
   name_visibility = on
!
force create element_like friction  &
   friction_name = .ABB_IRB_140.Friction_5  &
   adams_id = 5  &
   joint_name = .ABB_IRB_140.Joint_5  &
   mu_static = 5.0E-02  &
   mu_dynamic = 3.0E-02  &
   friction_arm = 0.1  &
   bending_reaction_arm = 0.1  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   transition_velocity_coefficient = 1.5  &
   max_stiction_deformation = 1.0E-02  &
   friction_torque_preload = 3.0E-02  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .ABB_IRB_140.Friction_5  &
   visibility = on  &
   name_visibility = on
!
force create element_like friction  &
   friction_name = .ABB_IRB_140.Friction_6  &
   adams_id = 6  &
   joint_name = .ABB_IRB_140.Joint_6  &
   mu_static = 5.0E-02  &
   mu_dynamic = 3.0E-02  &
   friction_arm = 0.1  &
   bending_reaction_arm = 0.1  &
   pin_radius = 1.0  &
   stiction_transition_velocity = 0.1  &
   transition_velocity_coefficient = 1.5  &
   max_stiction_deformation = 1.0E-02  &
   friction_torque_preload = 3.0E-02  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .ABB_IRB_140.Friction_6  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_1  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_85  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_86  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .ABB_IRB_140.Actuator_1  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_2  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_87  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_88  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .ABB_IRB_140.Actuator_2  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_3  &
   adams_id = 3  &
   type_of_freedom = rotational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.MARKER_89  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__2.MARKER_90  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .ABB_IRB_140.Actuator_3  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_4  &
   adams_id = 4  &
   type_of_freedom = rotational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.MARKER_91  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__5.MARKER_92  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .ABB_IRB_140.Actuator_4  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_5  &
   adams_id = 5  &
   type_of_freedom = rotational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_93  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_94  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .ABB_IRB_140.Actuator_5  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_6  &
   adams_id = 6  &
   type_of_freedom = rotational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_95  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_96  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .ABB_IRB_140.Actuator_6  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.External_Force_1  &
   adams_id = 7  &
   type_of_freedom = translational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.MARKER_97  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4__2.MARKER_98  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .ABB_IRB_140.External_Force_1  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.External_Force_2  &
   adams_id = 8  &
   type_of_freedom = translational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_99  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_100  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .ABB_IRB_140.External_Force_2  &
   visibility = on  &
   name_visibility = on
!
force create direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.External_Force_3  &
   adams_id = 9  &
   type_of_freedom = translational  &
   i_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_101  &
   j_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_102  &
   action_only = on  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .ABB_IRB_140.Last_Sim  &
   commands = "simulation single_run assemble model_name=.ABB_IRB_140",  &
              "simulation single_run statematrix state_matrices_name=.ABB_IRB_140.Last_Run.CON plant_input_name=.ABB_IRB_140.ABB_Robot_Arm_L.ctrl_pinput plant_output_name=.ABB_IRB_140.ABB_Robot_Arm_L.ctrl_poutput matrix_format=matlab file_name=ABB_Robot_Arm_L model_name=.ABB_IRB_140"
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .ABB_IRB_140.IRB140_Plant_1  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .ABB_IRB_140.ABB_Robot_Arm  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .ABB_IRB_140.ABB_Robot_Arm_L  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.input_channels  &
   object_value =   &
      .ABB_IRB_140.Torque1,  &
      .ABB_IRB_140.Torque2,  &
      .ABB_IRB_140.Torque3,  &
      .ABB_IRB_140.Torque4,  &
      .ABB_IRB_140.Torque5,  &
      .ABB_IRB_140.Torque6,  &
      .ABB_IRB_140.Disturbance1,  &
      .ABB_IRB_140.Disturbance2,  &
      .ABB_IRB_140.Disturbance3
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.output_channels  &
   object_value =   &
      .ABB_IRB_140.Theta1,  &
      .ABB_IRB_140.Theta2,  &
      .ABB_IRB_140.Theta3,  &
      .ABB_IRB_140.Theta4,  &
      .ABB_IRB_140.Theta5,  &
      .ABB_IRB_140.Theta6,  &
      .ABB_IRB_140.dTheta1,  &
      .ABB_IRB_140.dTheta2,  &
      .ABB_IRB_140.dTheta3,  &
      .ABB_IRB_140.dTheta4,  &
      .ABB_IRB_140.dTheta5,  &
      .ABB_IRB_140.dTheta6
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.file_name  &
   string_value = "IRB140_Plant_1"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.host  &
   string_value = "baqumau-PC"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.IRB140_Plant_1.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .ABB_IRB_140.IRB140_Plant_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.input_channels  &
   object_value =   &
      .ABB_IRB_140.Torque1,  &
      .ABB_IRB_140.Torque2,  &
      .ABB_IRB_140.Torque3,  &
      .ABB_IRB_140.Torque4,  &
      .ABB_IRB_140.Torque5,  &
      .ABB_IRB_140.Torque6,  &
      .ABB_IRB_140.Disturbance1,  &
      .ABB_IRB_140.Disturbance2,  &
      .ABB_IRB_140.Disturbance3
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.output_channels  &
   object_value =   &
      .ABB_IRB_140.Theta1,  &
      .ABB_IRB_140.dTheta1,  &
      .ABB_IRB_140.Theta2,  &
      .ABB_IRB_140.dTheta2,  &
      .ABB_IRB_140.Theta3,  &
      .ABB_IRB_140.dTheta3,  &
      .ABB_IRB_140.Theta4,  &
      .ABB_IRB_140.dTheta4,  &
      .ABB_IRB_140.Theta5,  &
      .ABB_IRB_140.dTheta5,  &
      .ABB_IRB_140.Theta6,  &
      .ABB_IRB_140.dTheta6
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.file_name  &
   string_value = "ABB_Robot_Arm"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.host  &
   string_value = "baqumau-PC"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .ABB_IRB_140.ABB_Robot_Arm
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.input_channels  &
   object_value =   &
      .ABB_IRB_140.Torque1,  &
      .ABB_IRB_140.Torque2,  &
      .ABB_IRB_140.Torque3,  &
      .ABB_IRB_140.Torque4,  &
      .ABB_IRB_140.Torque5,  &
      .ABB_IRB_140.Torque6
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.output_channels  &
   object_value =   &
      .ABB_IRB_140.Theta1,  &
      .ABB_IRB_140.Theta2,  &
      .ABB_IRB_140.Theta3,  &
      .ABB_IRB_140.Theta4,  &
      .ABB_IRB_140.Theta5,  &
      .ABB_IRB_140.Theta6
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.file_name  &
   string_value = "ABB_Robot_Arm_L"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.analysis_type  &
   string_value = "linear"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.host  &
   string_value = ""
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.include_mnf  &
   string_value = "yes"
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .ABB_IRB_140.ABB_Robot_Arm_L.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .ABB_IRB_140.ABB_Robot_Arm_L
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .ABB_IRB_140.ground
!
geometry create shape force  &
   force_name = .ABB_IRB_140.Joint_1_force_graphic_1  &
   adams_id = 39  &
   joint_name = .ABB_IRB_140.Joint_1  &
   applied_at_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_4
!
geometry create shape force  &
   force_name = .ABB_IRB_140.Joint_2_force_graphic_1  &
   adams_id = 40  &
   joint_name = .ABB_IRB_140.Joint_2  &
   applied_at_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_6
!
geometry create shape force  &
   force_name = .ABB_IRB_140.Joint_3_force_graphic_1  &
   adams_id = 41  &
   joint_name = .ABB_IRB_140.Joint_3  &
   applied_at_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_10
!
geometry create shape force  &
   force_name = .ABB_IRB_140.Joint_4_force_graphic_1  &
   adams_id = 42  &
   joint_name = .ABB_IRB_140.Joint_4  &
   applied_at_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_12
!
geometry create shape force  &
   force_name = .ABB_IRB_140.Joint_5_force_graphic_1  &
   adams_id = 43  &
   joint_name = .ABB_IRB_140.Joint_5  &
   applied_at_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_14
!
geometry create shape force  &
   force_name = .ABB_IRB_140.Joint_6_force_graphic_1  &
   adams_id = 44  &
   joint_name = .ABB_IRB_140.Joint_6  &
   applied_at_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_16
!
geometry create shape force  &
   force_name = .ABB_IRB_140.SFORCE_9_force_graphic_1  &
   adams_id = 90  &
   force_element_name = .ABB_IRB_140.External_Force_3  &
   applied_at_marker_name = .ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_101
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_21  &
   adams_id = 21  &
   contact_element_name = .ABB_IRB_140.Cont_1  &
   force_display = none
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.GCONTACT_21  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_47  &
   adams_id = 47  &
   contact_element_name = .ABB_IRB_140.Cont_2  &
   force_display = none
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.GCONTACT_47  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_25  &
   adams_id = 25  &
   contact_element_name = .ABB_IRB_140.Cont_3  &
   force_display = none
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.GCONTACT_25  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_71  &
   adams_id = 71  &
   contact_element_name = .ABB_IRB_140.Cont_4  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_29  &
   adams_id = 29  &
   contact_element_name = .ABB_IRB_140.Cont_5  &
   force_display = none
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.GCONTACT_29  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_33  &
   adams_id = 33  &
   contact_element_name = .ABB_IRB_140.Cont_6  &
   force_display = none
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.GCONTACT_33  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_37  &
   adams_id = 37  &
   contact_element_name = .ABB_IRB_140.Cont_7  &
   force_display = none
!
geometry attributes  &
   geometry_name = .ABB_IRB_140.GCONTACT_37  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_65  &
   adams_id = 65  &
   contact_element_name = .ABB_IRB_140.Cont_8  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .ABB_IRB_140.GCONTACT_68  &
   adams_id = 68  &
   contact_element_name = .ABB_IRB_140.Cont_9  &
   force_display = none
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = Gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = -9.80665
!
!----------------------------- Analysis settings ------------------------------!
!
!
executive_control set numerical_integration_parameters  &
   model_name = ABB_IRB_140  &
   scale = 1.0, 1.0, 1.0E-03
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .ABB_IRB_140.Theta_1  &
   from_first = yes  &
   object = .ABB_IRB_140.Joint_1  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .ABB_IRB_140.Theta_1  &
   color = WHITE
!
measure create object  &
   measure_name = .ABB_IRB_140.Theta_2  &
   from_first = yes  &
   object = .ABB_IRB_140.Joint_2  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .ABB_IRB_140.Theta_2  &
   color = WHITE
!
measure create object  &
   measure_name = .ABB_IRB_140.Theta_3  &
   from_first = yes  &
   object = .ABB_IRB_140.Joint_3  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .ABB_IRB_140.Theta_3  &
   color = WHITE
!
measure create object  &
   measure_name = .ABB_IRB_140.Theta_4  &
   from_first = yes  &
   object = .ABB_IRB_140.Joint_4  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .ABB_IRB_140.Theta_4  &
   color = WHITE
!
measure create object  &
   measure_name = .ABB_IRB_140.Theta_5  &
   from_first = yes  &
   object = .ABB_IRB_140.Joint_5  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .ABB_IRB_140.Theta_5  &
   color = WHITE
!
measure create object  &
   measure_name = .ABB_IRB_140.Theta_6  &
   from_first = yes  &
   object = .ABB_IRB_140.Joint_6  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .ABB_IRB_140.Theta_6  &
   color = WHITE
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Theta1  &
   function = "AZ(.ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_4,.ABB_IRB_140.IRB140___M2004C_BASE_.MARKER_3)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Theta2  &
   function = "AZ(.ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_6,.ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_5)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Theta3  &
   function = "AZ(.ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_10,.ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_9)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Theta4  &
   function = "AZ(.ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_12,.ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_11)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Theta5  &
   function = "AZ(.ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_14,.ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_13)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Theta6  &
   function = "AZ(.ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_16,.ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_15)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Torque1  &
   function = "0.00000000000000000e+000"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Torque2  &
   function = "0.00000000000000000e+000"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Torque3  &
   function = "0.00000000000000000e+000"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Torque4  &
   function = "0.00000000000000000e+000"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Torque5  &
   function = "0.00000000000000000e+000"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Torque6  &
   function = "0.00000000000000000e+000"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Disturbance1  &
   function = "0.00000000000000000e+000"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Disturbance2  &
   function = "0.00000000000000000e+000"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.dTheta1  &
   function = "WZ(.ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_4,.ABB_IRB_140.IRB140___M2004C_BASE_.MARKER_3,.ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_4)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.dTheta2  &
   function = "WZ(.ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_6,.ABB_IRB_140.IRB140___M2004C_LINK1_.MARKER_5,.ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_6)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.dTheta3  &
   function = "WZ(.ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_10,.ABB_IRB_140.IRB140___M2004C_LINK2_.MARKER_9,.ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_10)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.dTheta4  &
   function = "WZ(.ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_12,.ABB_IRB_140.IRB140___M2004C_LINK3__3.MARKER_11,.ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_12)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.dTheta5  &
   function = "WZ(.ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_14,.ABB_IRB_140.IRB140___M2004C_LINK4_.MARKER_13,.ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_14)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.dTheta6  &
   function = "WZ(.ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_16,.ABB_IRB_140.IRB140___M2004C_LINK5_.MARKER_15,.ABB_IRB_140.IRB140___M2004C_LINK6_.MARKER_16)"
!
data_element modify variable  &
   variable_name = .ABB_IRB_140.Disturbance3  &
   function = "0"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_1  &
   function = "VARVAL(.ABB_IRB_140.Torque1)"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_2  &
   function = "VARVAL(.ABB_IRB_140.Torque2)"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_3  &
   function = "VARVAL(.ABB_IRB_140.Torque3)"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_4  &
   function = "VARVAL(.ABB_IRB_140.Torque4)"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_5  &
   function = "VARVAL(.ABB_IRB_140.Torque5)"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.Actuator_6  &
   function = "VARVAL(.ABB_IRB_140.Torque6)"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.External_Force_1  &
   function = "VARVAL(.ABB_IRB_140.Disturbance1)"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.External_Force_2  &
   function = "VARVAL(.ABB_IRB_140.Disturbance2)"
!
force modify direct single_component_force  &
   single_component_force_name = .ABB_IRB_140.External_Force_3  &
   function = "VARVAL(.ABB_IRB_140.Disturbance3)"
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .ABB_IRB_140.IRB140_Plant_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .ABB_IRB_140.ABB_Robot_Arm
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .ABB_IRB_140.ABB_Robot_Arm_L
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
material modify  &
   material_name = .ABB_IRB_140.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
geometry modify shape force  &
   force_name = .ABB_IRB_140.Joint_1_force_graphic_1  &
   applied_at_marker_name = (.ABB_IRB_140.Joint_1.j)
!
geometry modify shape force  &
   force_name = .ABB_IRB_140.Joint_2_force_graphic_1  &
   applied_at_marker_name = (.ABB_IRB_140.Joint_2.j)
!
geometry modify shape force  &
   force_name = .ABB_IRB_140.Joint_3_force_graphic_1  &
   applied_at_marker_name = (.ABB_IRB_140.Joint_3.j)
!
geometry modify shape force  &
   force_name = .ABB_IRB_140.Joint_4_force_graphic_1  &
   applied_at_marker_name = (.ABB_IRB_140.Joint_4.j)
!
geometry modify shape force  &
   force_name = .ABB_IRB_140.Joint_5_force_graphic_1  &
   applied_at_marker_name = (.ABB_IRB_140.Joint_5.j)
!
geometry modify shape force  &
   force_name = .ABB_IRB_140.Joint_6_force_graphic_1  &
   applied_at_marker_name = (.ABB_IRB_140.Joint_6.j)
!
geometry modify shape force  &
   force_name = .ABB_IRB_140.SFORCE_9_force_graphic_1  &
   applied_at_marker_name = (.ABB_IRB_140.External_Force_3.i)
!
model display  &
   model_name = ABB_IRB_140
