!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
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
if condition = (! db_exists(".colors.COLOR_R096G096B096"))
!
color create  &
   color_name = .colors.COLOR_R096G096B096  &
   red_component = 0.3764705956  &
   blue_component = 0.3764705956  &
   green_component = 0.3764705956
!
else 
!
color modify  &
   color_name = .colors.COLOR_R096G096B096  &
   red_component = 0.3764705956  &
   blue_component = 0.3764705956  &
   green_component = 0.3764705956
!
end 
!
if condition = (! db_exists(".colors.COLOR_R089G086B086"))
!
color create  &
   color_name = .colors.COLOR_R089G086B086  &
   red_component = 0.349999994  &
   blue_component = 0.3400000036  &
   green_component = 0.3400000036
!
else 
!
color modify  &
   color_name = .colors.COLOR_R089G086B086  &
   red_component = 0.349999994  &
   blue_component = 0.3400000036  &
   green_component = 0.3400000036
!
end 
!
if condition = (! db_exists(".colors.COLOR_R160G160B160"))
!
color create  &
   color_name = .colors.COLOR_R160G160B160  &
   red_component = 0.6274510026  &
   blue_component = 0.6274510026  &
   green_component = 0.6274510026
!
else 
!
color modify  &
   color_name = .colors.COLOR_R160G160B160  &
   red_component = 0.6274510026  &
   blue_component = 0.6274510026  &
   green_component = 0.6274510026
!
end 
!
if condition = (! db_exists(".colors.COLOR_R048G048B048"))
!
color create  &
   color_name = .colors.COLOR_R048G048B048  &
   red_component = 0.1882352978  &
   blue_component = 0.1882352978  &
   green_component = 0.1882352978
!
else 
!
color modify  &
   color_name = .colors.COLOR_R048G048B048  &
   red_component = 0.1882352978  &
   blue_component = 0.1882352978  &
   green_component = 0.1882352978
!
end 
!
if condition = (! db_exists(".colors.COLOR_R144G144B160"))
!
color create  &
   color_name = .colors.COLOR_R144G144B160  &
   red_component = 0.5647059083  &
   blue_component = 0.6274510026  &
   green_component = 0.5647059083
!
else 
!
color modify  &
   color_name = .colors.COLOR_R144G144B160  &
   red_component = 0.5647059083  &
   blue_component = 0.6274510026  &
   green_component = 0.5647059083
!
end 
!
if condition = (! db_exists(".colors.COLOR_R000G048B176"))
!
color create  &
   color_name = .colors.COLOR_R000G048B176  &
   red_component = 0.0  &
   blue_component = 0.6901960969  &
   green_component = 0.1882352978
!
else 
!
color modify  &
   color_name = .colors.COLOR_R000G048B176  &
   red_component = 0.0  &
   blue_component = 0.6901960969  &
   green_component = 0.1882352978
!
end 
!
if condition = (! db_exists(".colors.COLOR_R080G144B080"))
!
color create  &
   color_name = .colors.COLOR_R080G144B080  &
   red_component = 0.3137255013  &
   blue_component = 0.3137255013  &
   green_component = 0.5647059083
!
else 
!
color modify  &
   color_name = .colors.COLOR_R080G144B080  &
   red_component = 0.3137255013  &
   blue_component = 0.3137255013  &
   green_component = 0.5647059083
!
end 
!
if condition = (! db_exists(".colors.COLOR_R000G176B000"))
!
color create  &
   color_name = .colors.COLOR_R000G176B000  &
   red_component = 0.0  &
   blue_component = 0.0  &
   green_component = 0.6901960969
!
else 
!
color modify  &
   color_name = .colors.COLOR_R000G176B000  &
   red_component = 0.0  &
   blue_component = 0.0  &
   green_component = 0.6901960969
!
end 
!
if condition = (! db_exists(".colors.COLOR_R112G064B064"))
!
color create  &
   color_name = .colors.COLOR_R112G064B064  &
   red_component = 0.4392156899  &
   blue_component = 0.250980407  &
   green_component = 0.250980407
!
else 
!
color modify  &
   color_name = .colors.COLOR_R112G064B064  &
   red_component = 0.4392156899  &
   blue_component = 0.250980407  &
   green_component = 0.250980407
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
   model_name = Robot_Formation_1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .Robot_Formation_1.X_1  &
   adams_id = 1  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.Y_1  &
   adams_id = 2  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.O_1  &
   adams_id = 3  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.X_2  &
   adams_id = 4  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.Y_2  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.O_2  &
   adams_id = 6  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.W_11  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.W_12  &
   adams_id = 8  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.W_13  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.W_21  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.W_22  &
   adams_id = 11  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.W_23  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.T_11  &
   adams_id = 13  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.T_12  &
   adams_id = 14  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.T_13  &
   adams_id = 15  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.T_21  &
   adams_id = 16  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.T_22  &
   adams_id = 17  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.T_23  &
   adams_id = 18  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.FD  &
   adams_id = 19  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.FX_1  &
   adams_id = 20  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.FY_1  &
   adams_id = 21  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.FX_2  &
   adams_id = 22  &
   function = ""
!
data_element create variable  &
   variable_name = .Robot_Formation_1.FY_2  &
   adams_id = 23  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .Robot_Formation_1.PINPUT  &
   adams_id = 1  &
   variable_name =  &
      .Robot_Formation_1.FD,  &
      .Robot_Formation_1.FX_1,  &
      .Robot_Formation_1.FX_2,  &
      .Robot_Formation_1.FY_1,  &
      .Robot_Formation_1.FY_2,  &
      .Robot_Formation_1.T_11,  &
      .Robot_Formation_1.T_12,  &
      .Robot_Formation_1.T_13,  &
      .Robot_Formation_1.T_21,  &
      .Robot_Formation_1.T_22,  &
      .Robot_Formation_1.T_23
!
data_element create plant output  &
   plant_output_name = .Robot_Formation_1.POUTPUT  &
   adams_id = 1  &
   variable_name =  &
      .Robot_Formation_1.O_1,  &
      .Robot_Formation_1.O_2,  &
      .Robot_Formation_1.W_11,  &
      .Robot_Formation_1.W_12,  &
      .Robot_Formation_1.W_13,  &
      .Robot_Formation_1.W_21,  &
      .Robot_Formation_1.W_22,  &
      .Robot_Formation_1.W_23,  &
      .Robot_Formation_1.X_1,  &
      .Robot_Formation_1.X_2,  &
      .Robot_Formation_1.Y_1,  &
      .Robot_Formation_1.Y_2
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Robot_Formation_1.copper  &
   adams_id = 2  &
   density = 8.906E-006  &
   youngs_modulus = 1.19E+005  &
   poissons_ratio = 0.326
!
material create  &
   material_name = .Robot_Formation_1.stainless  &
   adams_id = 3  &
   density = 7.75E-006  &
   youngs_modulus = 1.9E+005  &
   poissons_ratio = 0.305
!
material create  &
   material_name = .Robot_Formation_1.plastic  &
   adams_id = 4  &
   density = 1.724E-006  &
   youngs_modulus = 2227.527  &
   poissons_ratio = 0.4
!
material create  &
   material_name = .Robot_Formation_1.rubber  &
   adams_id = 5  &
   density = 9.2E-007  &
   youngs_modulus = 50.0  &
   poissons_ratio = 0.5
!
material create  &
   material_name = .Robot_Formation_1.nylon  &
   adams_id = 6  &
   density = 1.22E-006  &
   youngs_modulus = 2930.0  &
   poissons_ratio = 0.4
!
material create  &
   material_name = .Robot_Formation_1.aluminum  &
   adams_id = 7  &
   density = 2.74E-006  &
   youngs_modulus = 7.1705E+004  &
   poissons_ratio = 0.33
!
material create  &
   material_name = .Robot_Formation_1.steel  &
   adams_id = 8  &
   density = 7.801E-006  &
   youngs_modulus = 2.07E+005  &
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
   default_coordinate_system = .Robot_Formation_1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.ground.MARKER_1  &
   adams_id = 1  &
   location = -1.0E+004, -1.0E+004, -59.975  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.ground.MARKER_1  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.ground.MARKER_452  &
   adams_id = 452  &
   location = 692.40338741, 33.2473006948, -0.7271628705  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.ground.MARKER_452  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.ground.MARKER_455  &
   adams_id = 455  &
   location = -807.59661259, 33.2473006948, -0.7271628705  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.ground.MARKER_455  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.ground  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .Robot_Formation_1.ground.BOX_360  &
   adams_id = 360  &
   corner_marker = .Robot_Formation_1.ground.MARKER_1  &
   diag_corner_coords = 2.0E+004, 2.0E+004, 10.0
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.ground.BOX_360  &
   color = YELLOW  &
   visibility = on  &
   transparency = 10
!
part attributes  &
   part_name = .Robot_Formation_1.ground  &
   visibility = on  &
   name_visibility = off
!
!-------------------------------- omniwheel_1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_1  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.PSMAR  &
   adams_id = 566  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.cm  &
   adams_id = 567  &
   location = 632.7271046225, -67.7075339772, 3.841311497E-006  &
   orientation = 0.523598778, 2.1867005383, 1.9474986753E-008
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_151  &
   adams_id = 151  &
   location = 619.6926623922, -55.1411613169, 16.2382025987  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_151  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_153  &
   adams_id = 153  &
   location = 625.711331143, -65.5658013873, -23.1879626456  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_153  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_155  &
   adams_id = 155  &
   location = 639.7740271053, -89.9231052853, 6.9497600469  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_155  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_188  &
   adams_id = 188  &
   location = 623.8060779673, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_188  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_313  &
   adams_id = 313  &
   location = 649.0763634922, -95.6275133065, 24.3611627987  &
   orientation = 3.6651914292, 0.6453901889, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_313  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_315  &
   adams_id = 315  &
   location = 653.1211868559, -102.6333528801, -2.1350410836  &
   orientation = 0.5235987756, 5.2741511947E-002, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_315  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_317  &
   adams_id = 317  &
   location = 647.7039855374, -93.2504849617, -27.6322355146  &
   orientation = 0.5235987756, 0.7508732127, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_317  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_319  &
   adams_id = 319  &
   location = 635.3595282392, -71.8692577293, -40.1999998502  &
   orientation = 0.5235987756, 1.4490049135, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_319  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_321  &
   adams_id = 321  &
   location = 621.8639237244, -48.4941850307, -33.9577374826  &
   orientation = 0.5235987756, 2.1471366143, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_321  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_323  &
   adams_id = 323  &
   location = 613.5319153324, -34.0627231667, -11.8262723488  &
   orientation = 0.5235987756, 2.8452683151, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_323  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_325  &
   adams_id = 325  &
   location = 614.2621423898, -35.3275135312, 15.8388370515  &
   orientation = 3.6651914292, 2.7397852912, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_325  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_327  &
   adams_id = 327  &
   location = 623.7129235409, -51.6967466562, 36.0927785662  &
   orientation = 3.6651914292, 2.0416535905, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_327  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_329  &
   adams_id = 329  &
   location = 637.4621332513, -75.5110764386, 39.4585078633  &
   orientation = 3.6651914292, 1.3435218897, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1.MARKER_329  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_1  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_1  &
   color = COLOR_R096G096B096  &
   visibility = on
!
!-------------------------------- omniwheel_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_2  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.PSMAR  &
   adams_id = 568  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.cm  &
   adams_id = 569  &
   location = 614.8850513764, -78.0086550107, -2.8680772289E-006  &
   orientation = 3.6651914241, 0.6139827827, 3.1415926326
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_186  &
   adams_id = 186  &
   location = 623.8060779673, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_186  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_295  &
   adams_id = 295  &
   location = 625.7482322103, -97.2220046806, 33.9577374826  &
   orientation = 3.6651914292, 0.9944560392, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_295  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_297  &
   adams_id = 297  &
   location = 612.2526276954, -73.846931982, 40.1999998502  &
   orientation = 3.6651914292, 1.69258774, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_297  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_299  &
   adams_id = 299  &
   location = 599.9081703972, -52.4657047496, 27.6322355146  &
   orientation = 3.6651914292, 2.3907194408, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_299  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_301  &
   adams_id = 301  &
   location = 594.4909690787, -43.0828368312, 2.1350410836  &
   orientation = 3.6651914292, 3.0888511416, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_301  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_303  &
   adams_id = 303  &
   location = 598.5357924425, -50.0886764049, -24.3611627987  &
   orientation = 0.5235987756, 2.4962024647, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_303  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_305  &
   adams_id = 305  &
   location = 610.1500226833, -70.2051132728, -39.4585078633  &
   orientation = 0.5235987756, 1.7980707639, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_305  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_307  &
   adams_id = 307  &
   location = 623.8992323937, -94.0194430552, -36.0927785662  &
   orientation = 0.5235987756, 1.0999390631, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_307  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_309  &
   adams_id = 309  &
   location = 633.3500135448, -110.3886761801, -15.8388370515  &
   orientation = 0.5235987756, 0.4018073623, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_309  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_311  &
   adams_id = 311  &
   location = 634.0802406023, -111.6534665446, 11.8262723488  &
   orientation = 3.6651914292, 0.2963243385, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2.MARKER_311  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_2  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_2  &
   color = COLOR_R089G086B086  &
   visibility = on
!
!-------------------------------- Part1_banhxe --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part1_banhxe  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part1_banhxe
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe.PSMAR  &
   adams_id = 570  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe.cm  &
   adams_id = 571  &
   location = 623.8060779673, -72.8580948557, 0.0  &
   orientation = 0.5235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_187  &
   adams_id = 187  &
   location = 623.8060779673, -72.8580948557, 0.0  &
   orientation = 5.2359880125, 1.5707966052, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_187  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_189  &
   adams_id = 189  &
   location = 623.8060779673, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_189  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_190  &
   adams_id = 190  &
   location = 623.8060779673, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_190  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part1_banhxe  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part1_banhxe  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------------------- roller -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller.PSMAR  &
   adams_id = 572  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller.cm  &
   adams_id = 573  &
   location = 637.4621332513, -75.5110764386, 39.4585078633  &
   orientation = 3.6651914292, 1.3435218897, 1.506469053
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller.MARKER_328  &
   adams_id = 328  &
   location = 637.4621332513, -75.5110764386, 39.4585078633  &
   orientation = 3.6651914292, 1.3435218897, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller.MARKER_328  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!---------------------------------- roller_2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_2  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_2.PSMAR  &
   adams_id = 574  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_2.cm  &
   adams_id = 575  &
   location = 623.7129235409, -51.6967466562, 36.0927785662  &
   orientation = 0.5235987756, 1.0999390631, 2.9787300393E-002
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_2.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_2.MARKER_326  &
   adams_id = 326  &
   location = 623.7129235409, -51.6967466562, 36.0927785662  &
   orientation = 3.6651914292, 2.0416535905, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_2.MARKER_326  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_2  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_2  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!---------------------------------- roller_3 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_3  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_3.PSMAR  &
   adams_id = 576  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_3.cm  &
   adams_id = 577  &
   location = 614.2621423898, -35.3275135312, 15.8388370515  &
   orientation = 0.5235987756, 0.4018073623, 5.7778186482
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_3.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_3.MARKER_324  &
   adams_id = 324  &
   location = 614.2621423898, -35.3275135312, 15.8388370515  &
   orientation = 3.6651914292, 2.7397852912, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_3.MARKER_324  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_3  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_3  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!---------------------------------- roller_4 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_4  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_4.PSMAR  &
   adams_id = 578  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_4.cm  &
   adams_id = 579  &
   location = 613.5319153324, -34.0627231667, -11.8262723488  &
   orientation = 0.5235987756, 2.8452683151, 5.2837848349
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_4.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_4.MARKER_322  &
   adams_id = 322  &
   location = 613.5319153324, -34.0627231667, -11.8262723488  &
   orientation = 0.5235987756, 2.8452683151, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_4.MARKER_322  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_4  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_4  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!---------------------------------- roller_5 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_5  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_5.PSMAR  &
   adams_id = 580  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_5.cm  &
   adams_id = 581  &
   location = 621.8639237244, -48.4941850307, -33.9577374826  &
   orientation = 0.5235987756, 2.1471366143, 5.5944417962
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_5.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_5.MARKER_320  &
   adams_id = 320  &
   location = 621.8639237244, -48.4941850307, -33.9577374826  &
   orientation = 0.5235987756, 2.1471366143, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_5.MARKER_320  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_5  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_5  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!---------------------------------- roller_6 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_6  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_6.PSMAR  &
   adams_id = 582  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_6.cm  &
   adams_id = 583  &
   location = 635.3595282392, -71.8692577293, -40.1999998502  &
   orientation = 3.6651914292, 1.69258774, 1.6979663939
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_6.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_6.MARKER_318  &
   adams_id = 318  &
   location = 635.3595282392, -71.8692577293, -40.1999998502  &
   orientation = 0.5235987756, 1.4490049135, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_6.MARKER_318  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_6  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_6  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!---------------------------------- roller_7 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_7  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_7.PSMAR  &
   adams_id = 584  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_7.cm  &
   adams_id = 585  &
   location = 647.7039855374, -93.2504849617, -27.6322355146  &
   orientation = 3.6651914292, 2.3907194408, 2.1572107113
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_7.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_7.MARKER_316  &
   adams_id = 316  &
   location = 647.7039855374, -93.2504849617, -27.6322355146  &
   orientation = 0.5235987756, 0.7508732127, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_7.MARKER_316  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_7  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_7  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!---------------------------------- roller_8 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_8  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_8.PSMAR  &
   adams_id = 586  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_8.cm  &
   adams_id = 587  &
   location = 653.1211868559, -102.6333528801, -2.1350410836  &
   orientation = 0.5235987756, 5.2741511947E-002, 0.2512310296
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_8.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_8.MARKER_314  &
   adams_id = 314  &
   location = 653.1211868559, -102.6333528801, -2.1350410836  &
   orientation = 0.5235987756, 5.2741511947E-002, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_8.MARKER_314  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_8  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_8  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!---------------------------------- roller_9 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_9  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_9.PSMAR  &
   adams_id = 588  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_9.cm  &
   adams_id = 589  &
   location = 649.0763634922, -95.6275133065, 24.3611627987  &
   orientation = 3.6651914292, 0.6453901889, 2.8870633252
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_9.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_9.MARKER_312  &
   adams_id = 312  &
   location = 649.0763634922, -95.6275133065, 24.3611627987  &
   orientation = 3.6651914292, 0.6453901889, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_9.MARKER_312  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_9  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_9  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_10 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_10  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_10.PSMAR  &
   adams_id = 590  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_10.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_10.cm  &
   adams_id = 591  &
   location = 634.0802406023, -111.6534665446, 11.8262723488  &
   orientation = 3.6651914292, 0.2963243385, 2.6855943078
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_10.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_10.MARKER_310  &
   adams_id = 310  &
   location = 634.0802406023, -111.6534665446, 11.8262723488  &
   orientation = 3.6651914292, 0.2963243385, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_10.MARKER_310  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_10  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_10  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_11 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_11  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_11.PSMAR  &
   adams_id = 592  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_11.cm  &
   adams_id = 593  &
   location = 633.3500135448, -110.3886761801, -15.8388370515  &
   orientation = 0.5235987756, 0.4018073623, 5.735714255
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_11.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_11.MARKER_308  &
   adams_id = 308  &
   location = 633.3500135448, -110.3886761801, -15.8388370515  &
   orientation = 0.5235987756, 0.4018073623, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_11.MARKER_308  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_11  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_11  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_12 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_12  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_12.PSMAR  &
   adams_id = 594  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_12.cm  &
   adams_id = 595  &
   location = 623.8992323937, -94.0194430552, -36.0927785662  &
   orientation = 0.5235987756, 1.0999390631, 0.1822421664
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_12.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_12.MARKER_306  &
   adams_id = 306  &
   location = 623.8992323937, -94.0194430552, -36.0927785662  &
   orientation = 0.5235987756, 1.0999390631, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_12.MARKER_306  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_12  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_12  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_13 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_13  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_13.PSMAR  &
   adams_id = 596  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_13.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_13.cm  &
   adams_id = 597  &
   location = 610.1500226833, -70.2051132728, -39.4585078633  &
   orientation = 0.5235987756, 1.7980707639, 6.1389362025
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_13.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_13.MARKER_304  &
   adams_id = 304  &
   location = 610.1500226833, -70.2051132728, -39.4585078633  &
   orientation = 0.5235987756, 1.7980707639, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_13.MARKER_304  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_13  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_13  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_14 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_14  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_14
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_14.PSMAR  &
   adams_id = 598  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_14.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_14.cm  &
   adams_id = 599  &
   location = 598.5357924425, -50.0886764049, -24.3611627987  &
   orientation = 0.5235987756, 2.4962024647, 4.8259786958
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_14.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_14.MARKER_302  &
   adams_id = 302  &
   location = 598.5357924425, -50.0886764049, -24.3611627987  &
   orientation = 0.5235987756, 2.4962024647, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_14.MARKER_302  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_14  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_14  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_15 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_15  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_15
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_15.PSMAR  &
   adams_id = 600  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_15.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_15.cm  &
   adams_id = 601  &
   location = 594.4909690787, -43.0828368312, 2.1350410836  &
   orientation = 0.5235987756, 5.2741511947E-002, 5.6765039422
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_15.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_15.MARKER_300  &
   adams_id = 300  &
   location = 594.4909690787, -43.0828368312, 2.1350410836  &
   orientation = 3.6651914292, 3.0888511416, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_15.MARKER_300  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_15  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_15  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_16 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_16  &
   adams_id = 20  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_16
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_16.PSMAR  &
   adams_id = 602  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_16.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_16.cm  &
   adams_id = 603  &
   location = 599.9081703972, -52.4657047496, 27.6322355146  &
   orientation = 3.6651914292, 2.3907194408, 2.0308886593
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_16.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_16.MARKER_298  &
   adams_id = 298  &
   location = 599.9081703972, -52.4657047496, 27.6322355146  &
   orientation = 3.6651914292, 2.3907194408, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_16.MARKER_298  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_16  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_16  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_17 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_17  &
   adams_id = 21  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_17
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_17.PSMAR  &
   adams_id = 604  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_17.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_17.cm  &
   adams_id = 605  &
   location = 612.2526276954, -73.846931982, 40.1999998502  &
   orientation = 0.5235987756, 1.4490049135, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_17.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_17.MARKER_296  &
   adams_id = 296  &
   location = 612.2526276954, -73.846931982, 40.1999998502  &
   orientation = 3.6651914292, 1.69258774, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_17.MARKER_296  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_17  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_17  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_18 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_18  &
   adams_id = 22  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_18
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_18.PSMAR  &
   adams_id = 606  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_18.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_18.cm  &
   adams_id = 607  &
   location = 625.7482322103, -97.2220046806, 33.9577374826  &
   orientation = 0.5235987756, 2.1471366143, 4.0316445858E-002
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_18.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_18.MARKER_294  &
   adams_id = 294  &
   location = 625.7482322103, -97.2220046806, 33.9577374826  &
   orientation = 3.6651914292, 0.9944560392, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_18.MARKER_294  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_18  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_18  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!-------------------------------- Part3_banhxe --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part3_banhxe  &
   adams_id = 23  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part3_banhxe
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe.PSMAR  &
   adams_id = 608  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe.cm  &
   adams_id = 609  &
   location = 644.7135870199, -60.8002102562, 4.8968039883E-002  &
   orientation = 0.5235985448, 1.7979607563, 6.2772684109
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_131  &
   adams_id = 131  &
   location = 650.5021985177, -55.0971320139, -8.7922470031  &
   orientation = 0.5235987756, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_131  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_191  &
   adams_id = 191  &
   location = 623.8060779673, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_191  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_214  &
   adams_id = 214  &
   location = 657.5810687149, -53.3580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_214  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_442  &
   adams_id = 442  &
   location = 657.5810687149, -53.3580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_442  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_443  &
   adams_id = 443  &
   location = 657.5810687149, -53.3580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_443  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part3_banhxe  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part3_banhxe  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!----------------------------- hex_nut_gradec_iso -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso  &
   adams_id = 24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso.PSMAR  &
   adams_id = 610  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso.cm  &
   adams_id = 611  &
   location = 621.5027649751, -100.4720248499, 6.949759763  &
   orientation = 0.5235987764, 1.8179372112, 6.283185307
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso.MARKER_106  &
   adams_id = 106  &
   location = 621.5027649751, -100.4720248499, 6.949759763  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso.MARKER_106  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!---------------------------- hex_nut_gradec_iso_2 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_2  &
   adams_id = 25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_2.PSMAR  &
   adams_id = 612  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_2.cm  &
   adams_id = 613  &
   location = 607.4400679426, -76.1147190982, -23.1879635887  &
   orientation = 0.5235987746, 0.7702498069, 7.6276209248E-010
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_2.MARKER_104  &
   adams_id = 104  &
   location = 607.4400679426, -76.1147190982, -23.1879635887  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_2.MARKER_104  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_2  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_2  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!---------------------------- hex_nut_gradec_iso_3 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_3  &
   adams_id = 26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_3.PSMAR  &
   adams_id = 614  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_3.cm  &
   adams_id = 615  &
   location = 601.4213994464, -65.6900794686, 16.2382038359  &
   orientation = 3.6651914233, 0.2773609705, 3.1415926595
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_3.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_3.MARKER_102  &
   adams_id = 102  &
   location = 601.4213994464, -65.6900794686, 16.2382038359  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_3.MARKER_102  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_3  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_3  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------ socket_head_cap_screw_iso_1 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1  &
   adams_id = 27  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.PSMAR  &
   adams_id = 616  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.cm  &
   adams_id = 617  &
   location = 639.7740271053, -89.9231052853, 6.9497600469  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.MARKER_107  &
   adams_id = 107  &
   location = 621.5027649751, -100.4720248499, 6.949759763  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.MARKER_107  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.MARKER_154  &
   adams_id = 154  &
   location = 639.7740271053, -89.9231052853, 6.9497600469  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.MARKER_154  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_2 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2  &
   adams_id = 28  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.PSMAR  &
   adams_id = 618  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.cm  &
   adams_id = 619  &
   location = 625.711331143, -65.5658013873, -23.1879626456  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.MARKER_105  &
   adams_id = 105  &
   location = 607.4400679426, -76.1147190982, -23.1879635887  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.MARKER_105  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.MARKER_152  &
   adams_id = 152  &
   location = 625.711331143, -65.5658013873, -23.1879626456  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.MARKER_152  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_3 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3  &
   adams_id = 29  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.PSMAR  &
   adams_id = 620  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.cm  &
   adams_id = 621  &
   location = 619.6926623922, -55.1411613169, 16.2382025987  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.MARKER_103  &
   adams_id = 103  &
   location = 601.4213994464, -65.6900794686, 16.2382038359  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.MARKER_103  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.MARKER_150  &
   adams_id = 150  &
   location = 619.6926623922, -55.1411613169, 16.2382025987  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.MARKER_150  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------- socket_head_cap_screw_iso --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso  &
   adams_id = 30  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso.PSMAR  &
   adams_id = 622  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso.cm  &
   adams_id = 623  &
   location = 650.5021985177, -55.0971320139, -8.7922470031  &
   orientation = 0.5235987756, 0.2272744371, 5.6385481215
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso.MARKER_130  &
   adams_id = 130  &
   location = 650.5021985177, -55.0971320139, -8.7922470031  &
   orientation = 0.5235987756, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso.MARKER_130  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------- omniwheel_1_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_1_2  &
   adams_id = 31  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.PSMAR  &
   adams_id = 624  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.cm  &
   adams_id = 625  &
   location = 867.2728891181, -67.7075421877, 7.3378081118E-007  &
   orientation = 5.7595865879, 2.0582201089, 2.9947309105E-008
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_145  &
   adams_id = 145  &
   location = 862.9073152985, -85.2788840094, 16.2382025987  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_145  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_147  &
   adams_id = 147  &
   location = 868.9259840494, -74.854243939, -23.1879626456  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_147  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_149  &
   adams_id = 149  &
   location = 882.9886800116, -50.496940041, 6.9497600469  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_149  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_182  &
   adams_id = 182  &
   location = 876.1939220327, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_182  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_277  &
   adams_id = 277  &
   location = 883.2776740781, -39.5886764049, 24.3611627987  &
   orientation = 2.617993878, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_277  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_279  &
   adams_id = 279  &
   location = 887.3224974418, -32.5828368312, -2.1350410836  &
   orientation = 5.7595865316, 3.0888511416, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_279  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_281  &
   adams_id = 281  &
   location = 881.9052961233, -41.9657047496, -27.6322355146  &
   orientation = 5.7595865316, 2.3907194408, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_281  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_283  &
   adams_id = 283  &
   location = 869.5608388251, -63.346931982, -40.1999998502  &
   orientation = 5.7595865316, 1.69258774, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_283  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_285  &
   adams_id = 285  &
   location = 856.0652343103, -86.7220046806, -33.9577374826  &
   orientation = 5.7595865316, 0.9944560392, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_285  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_287  &
   adams_id = 287  &
   location = 847.7332259183, -101.1534665446, -11.8262723488  &
   orientation = 5.7595865316, 0.2963243385, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_287  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_289  &
   adams_id = 289  &
   location = 848.4634529757, -99.8886761801, 15.8388370515  &
   orientation = 2.617993878, 0.4018073623, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_289  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_291  &
   adams_id = 291  &
   location = 857.9142341268, -83.5194430552, 36.0927785662  &
   orientation = 2.617993878, 1.0999390631, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_291  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_293  &
   adams_id = 293  &
   location = 871.6634438372, -59.7051132728, 39.4585078633  &
   orientation = 2.617993878, 1.7980707639, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_293  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_1_2  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_1_2  &
   color = COLOR_R096G096B096  &
   visibility = on
!
!------------------------------- omniwheel_2_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_2_2  &
   adams_id = 32  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_2_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.PSMAR  &
   adams_id = 626  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.cm  &
   adams_id = 627  &
   location = 885.1149521563, -78.0086525158, -2.8367678025E-006  &
   orientation = 5.7595864791, 2.3517491893, 6.2831852908
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_180  &
   adams_id = 180  &
   location = 876.1939220327, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_180  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_259  &
   adams_id = 259  &
   location = 896.3226097551, -58.9941850307, 33.9577374826  &
   orientation = 2.617993878, 2.1471366144, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_259  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_261  &
   adams_id = 261  &
   location = 882.8270052403, -82.3692577293, 40.1999998502  &
   orientation = 2.617993878, 1.4490049135, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_261  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_263  &
   adams_id = 263  &
   location = 870.482547942, -103.7504849617, 27.6322355146  &
   orientation = 2.617993878, 0.7508732127, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_263  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_265  &
   adams_id = 265  &
   location = 865.0653466236, -113.1333528801, 2.1350410836  &
   orientation = 2.617993878, 5.2741511947E-002, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_265  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_267  &
   adams_id = 267  &
   location = 869.1101699873, -106.1275133065, -24.3611627987  &
   orientation = 5.7595865316, 0.6453901889, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_267  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_269  &
   adams_id = 269  &
   location = 880.7244002281, -86.0110764386, -39.4585078633  &
   orientation = 5.7595865316, 1.3435218896, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_269  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_271  &
   adams_id = 271  &
   location = 894.4736099386, -62.1967466562, -36.0927785662  &
   orientation = 5.7595865316, 2.0416535904, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_271  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_273  &
   adams_id = 273  &
   location = 903.9243910897, -45.8275135312, -15.8388370515  &
   orientation = 5.7595865316, 2.7397852912, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_273  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_275  &
   adams_id = 275  &
   location = 904.6546181471, -44.5627231667, 11.8262723488  &
   orientation = 2.617993878, 2.8452683151, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_275  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_2_2  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_2_2  &
   color = COLOR_R089G086B086  &
   visibility = on
!
!------------------------------- Part1_banhxe_2 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part1_banhxe_2  &
   adams_id = 33  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part1_banhxe_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.PSMAR  &
   adams_id = 628  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.cm  &
   adams_id = 629  &
   location = 876.1939220327, -72.8580948557, 0.0  &
   orientation = 5.7595865316, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_181  &
   adams_id = 181  &
   location = 876.1939220327, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_181  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_183  &
   adams_id = 183  &
   location = 876.1939220327, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_183  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_184  &
   adams_id = 184  &
   location = 876.1939220327, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_184  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part1_banhxe_2  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part1_banhxe_2  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------------- roller_19 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_19  &
   adams_id = 34  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_19
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_19.PSMAR  &
   adams_id = 630  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_19.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_19.cm  &
   adams_id = 631  &
   location = 871.6634438372, -59.7051132728, 39.4585078633  &
   orientation = 2.617993878, 1.7980707639, 1.6768381389
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_19.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_19.MARKER_292  &
   adams_id = 292  &
   location = 871.6634438372, -59.7051132728, 39.4585078633  &
   orientation = 2.617993878, 1.7980707639, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_19.MARKER_292  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_19  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_19  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_20 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_20  &
   adams_id = 35  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_20
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_20.PSMAR  &
   adams_id = 632  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_20.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_20.cm  &
   adams_id = 633  &
   location = 857.9142341268, -83.5194430552, 36.0927785662  &
   orientation = 5.7595865316, 2.0416535904, 0.3311714521
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_20.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_20.MARKER_290  &
   adams_id = 290  &
   location = 857.9142341268, -83.5194430552, 36.0927785662  &
   orientation = 2.617993878, 1.0999390631, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_20.MARKER_290  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_20  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_20  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_21 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_21  &
   adams_id = 36  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_21
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_21.PSMAR  &
   adams_id = 634  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_21.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_21.cm  &
   adams_id = 635  &
   location = 848.4634529757, -99.8886761801, 15.8388370515  &
   orientation = 2.617993878, 0.4018073623, 2.7698351805
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_21.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_21.MARKER_288  &
   adams_id = 288  &
   location = 848.4634529757, -99.8886761801, 15.8388370515  &
   orientation = 2.617993878, 0.4018073623, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_21.MARKER_288  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_21  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_21  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_22 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_22  &
   adams_id = 37  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_22
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_22.PSMAR  &
   adams_id = 636  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_22.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_22.cm  &
   adams_id = 637  &
   location = 847.7332259183, -101.1534665446, -11.8262723488  &
   orientation = 5.7595865316, 0.2963243385, 0.3251163021
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_22.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_22.MARKER_286  &
   adams_id = 286  &
   location = 847.7332259183, -101.1534665446, -11.8262723488  &
   orientation = 5.7595865316, 0.2963243385, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_22.MARKER_286  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_22  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_22  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_23 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_23  &
   adams_id = 38  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_23
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_23.PSMAR  &
   adams_id = 638  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_23.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_23.cm  &
   adams_id = 639  &
   location = 856.0652343103, -86.7220046806, -33.9577374826  &
   orientation = 5.7595865316, 0.9944560392, 6.2008080965
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_23.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_23.MARKER_284  &
   adams_id = 284  &
   location = 856.0652343103, -86.7220046806, -33.9577374826  &
   orientation = 5.7595865316, 0.9944560392, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_23.MARKER_284  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_23  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_23  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_24 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_24  &
   adams_id = 39  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_24
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_24.PSMAR  &
   adams_id = 640  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_24.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_24.cm  &
   adams_id = 641  &
   location = 869.5608388251, -63.346931982, -40.1999998502  &
   orientation = 2.617993878, 1.4490049135, 1.5894751028
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_24.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_24.MARKER_282  &
   adams_id = 282  &
   location = 869.5608388251, -63.346931982, -40.1999998502  &
   orientation = 5.7595865316, 1.69258774, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_24.MARKER_282  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_24  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_24  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_25 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_25  &
   adams_id = 40  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_25
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_25.PSMAR  &
   adams_id = 642  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_25.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_25.cm  &
   adams_id = 643  &
   location = 881.9052961233, -41.9657047496, -27.6322355146  &
   orientation = 5.7595865316, 2.3907194408, 5.2876920083
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_25.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_25.MARKER_280  &
   adams_id = 280  &
   location = 881.9052961233, -41.9657047496, -27.6322355146  &
   orientation = 5.7595865316, 2.3907194408, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_25.MARKER_280  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_25  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_25  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_26 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_26  &
   adams_id = 41  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_26
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_26.PSMAR  &
   adams_id = 644  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_26.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_26.cm  &
   adams_id = 645  &
   location = 887.3224974418, -32.5828368312, -2.1350410836  &
   orientation = 5.7595865316, 3.0888511416, 4.2813775819
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_26.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_26.MARKER_278  &
   adams_id = 278  &
   location = 887.3224974418, -32.5828368312, -2.1350410836  &
   orientation = 5.7595865316, 3.0888511416, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_26.MARKER_278  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_26  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_26  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_27 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_27  &
   adams_id = 42  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_27
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_27.PSMAR  &
   adams_id = 646  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_27.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_27.cm  &
   adams_id = 647  &
   location = 883.2776740781, -39.5886764049, 24.3611627987  &
   orientation = 5.7595865316, 0.6453901888, 6.2647126907
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_27.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_27.MARKER_276  &
   adams_id = 276  &
   location = 883.2776740781, -39.5886764049, 24.3611627987  &
   orientation = 2.617993878, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_27.MARKER_276  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_27  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_27  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_28 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_28  &
   adams_id = 43  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_28
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_28.PSMAR  &
   adams_id = 648  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_28.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_28.cm  &
   adams_id = 649  &
   location = 904.6546181471, -44.5627231667, 11.8262723488  &
   orientation = 2.617993878, 2.8452683151, 1.4270602052
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_28.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_28.MARKER_274  &
   adams_id = 274  &
   location = 904.6546181471, -44.5627231667, 11.8262723488  &
   orientation = 2.617993878, 2.8452683151, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_28.MARKER_274  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_28  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_28  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_29 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_29  &
   adams_id = 44  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_29
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_29.PSMAR  &
   adams_id = 650  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_29.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_29.cm  &
   adams_id = 651  &
   location = 903.9243910897, -45.8275135312, -15.8388370515  &
   orientation = 5.7595865316, 2.7397852912, 4.609172012
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_29.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_29.MARKER_272  &
   adams_id = 272  &
   location = 903.9243910897, -45.8275135312, -15.8388370515  &
   orientation = 5.7595865316, 2.7397852912, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_29.MARKER_272  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_29  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_29  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_30 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_30  &
   adams_id = 45  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_30
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_30.PSMAR  &
   adams_id = 652  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_30.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_30.cm  &
   adams_id = 653  &
   location = 894.4736099386, -62.1967466562, -36.0927785662  &
   orientation = 2.617993878, 1.0999390631, 1.826451958
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_30.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_30.MARKER_270  &
   adams_id = 270  &
   location = 894.4736099386, -62.1967466562, -36.0927785662  &
   orientation = 5.7595865316, 2.0416535904, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_30.MARKER_270  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_30  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_30  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_31 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_31  &
   adams_id = 46  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_31
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_31.PSMAR  &
   adams_id = 654  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_31.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_31.cm  &
   adams_id = 655  &
   location = 880.7244002281, -86.0110764386, -39.4585078633  &
   orientation = 5.7595865316, 1.3435218896, 0.2495762672
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_31.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_31.MARKER_268  &
   adams_id = 268  &
   location = 880.7244002281, -86.0110764386, -39.4585078633  &
   orientation = 5.7595865316, 1.3435218896, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_31.MARKER_268  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_31  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_31  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_32 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_32  &
   adams_id = 47  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_32
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_32.PSMAR  &
   adams_id = 656  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_32.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_32.cm  &
   adams_id = 657  &
   location = 869.1101699873, -106.1275133065, -24.3611627987  &
   orientation = 5.7595865316, 0.6453901889, 6.2317578822
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_32.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_32.MARKER_266  &
   adams_id = 266  &
   location = 869.1101699873, -106.1275133065, -24.3611627987  &
   orientation = 5.7595865316, 0.6453901889, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_32.MARKER_266  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_32  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_32  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_33 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_33  &
   adams_id = 48  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_33
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_33.PSMAR  &
   adams_id = 658  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_33.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_33.cm  &
   adams_id = 659  &
   location = 865.0653466236, -113.1333528801, 2.1350410836  &
   orientation = 5.7595865316, 3.0888511416, 4.8421933806
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_33.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_33.MARKER_264  &
   adams_id = 264  &
   location = 865.0653466236, -113.1333528801, 2.1350410836  &
   orientation = 2.617993878, 5.2741511947E-002, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_33.MARKER_264  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_33  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_33  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_34 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_34  &
   adams_id = 49  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_34
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_34.PSMAR  &
   adams_id = 660  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_34.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_34.cm  &
   adams_id = 661  &
   location = 870.482547942, -103.7504849617, 27.6322355146  &
   orientation = 2.617993878, 0.7508732127, 3.4579057659
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_34.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_34.MARKER_262  &
   adams_id = 262  &
   location = 870.482547942, -103.7504849617, 27.6322355146  &
   orientation = 2.617993878, 0.7508732127, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_34.MARKER_262  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_34  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_34  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_35 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_35  &
   adams_id = 50  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_35
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_35.PSMAR  &
   adams_id = 662  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_35.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_35.cm  &
   adams_id = 663  &
   location = 882.8270052403, -82.3692577293, 40.1999998502  &
   orientation = 5.7595865316, 1.69258774, 6.0285926632
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_35.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_35.MARKER_260  &
   adams_id = 260  &
   location = 882.8270052403, -82.3692577293, 40.1999998502  &
   orientation = 2.617993878, 1.4490049135, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_35.MARKER_260  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_35  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_35  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_36 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_36  &
   adams_id = 51  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_36
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_36.PSMAR  &
   adams_id = 664  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_36.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_36.cm  &
   adams_id = 665  &
   location = 896.3226097551, -58.9941850307, 33.9577374826  &
   orientation = 5.7595865316, 0.9944560392, 5.9992360407
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_36.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_36.MARKER_258  &
   adams_id = 258  &
   location = 896.3226097551, -58.9941850307, 33.9577374826  &
   orientation = 2.617993878, 2.1471366144, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_36.MARKER_258  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_36  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_36  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!------------------------------- Part3_banhxe_2 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part3_banhxe_2  &
   adams_id = 52  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part3_banhxe_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.PSMAR  &
   adams_id = 666  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.cm  &
   adams_id = 667  &
   location = 855.2977365521, -60.7806071845, 4.8973189957E-002  &
   orientation = 5.759586583, 1.3436320617, 5.9173859604E-003
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_129  &
   adams_id = 129  &
   location = 847.4644167409, -58.6190576974, -8.7922470031  &
   orientation = 2.617993878, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_129  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_185  &
   adams_id = 185  &
   location = 876.1939220327, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_185  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_212  &
   adams_id = 212  &
   location = 842.4189312851, -53.3580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_212  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_440  &
   adams_id = 440  &
   location = 842.4189312851, -53.3580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_440  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_441  &
   adams_id = 441  &
   location = 842.4189312851, -53.3580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_441  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part3_banhxe_2  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part3_banhxe_2  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!---------------------------- hex_nut_gradec_iso_4 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_4  &
   adams_id = 53  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_4.PSMAR  &
   adams_id = 668  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_4.cm  &
   adams_id = 669  &
   location = 901.2599434022, -61.0458574227, 6.949759763  &
   orientation = 5.7595865324, 1.3236550149, 1.457545114E-010
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_4.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_4.MARKER_100  &
   adams_id = 100  &
   location = 901.2599434022, -61.0458574227, 6.949759763  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_4.MARKER_100  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_4  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_4  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!---------------------------- hex_nut_gradec_iso_5 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_5  &
   adams_id = 54  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_5.PSMAR  &
   adams_id = 670  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_5.cm  &
   adams_id = 671  &
   location = 887.1972463697, -85.4031631744, -23.1879635887  &
   orientation = 2.617993877, 0.7702491591, 3.1415926544
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_5.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_5.MARKER_98  &
   adams_id = 98  &
   location = 887.1972463697, -85.4031631744, -23.1879635887  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_5.MARKER_98  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_5  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_5  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!---------------------------- hex_nut_gradec_iso_6 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_6  &
   adams_id = 55  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_6.PSMAR  &
   adams_id = 672  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_6.cm  &
   adams_id = 673  &
   location = 881.1785778735, -95.827802804, 16.2382038359  &
   orientation = 5.7595865318, 0.2773482293, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_6.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_6.MARKER_96  &
   adams_id = 96  &
   location = 881.1785778735, -95.827802804, 16.2382038359  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_6.MARKER_96  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_6  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_6  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_4 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4  &
   adams_id = 56  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.PSMAR  &
   adams_id = 674  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.cm  &
   adams_id = 675  &
   location = 882.9886800116, -50.496940041, 6.9497600469  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.MARKER_101  &
   adams_id = 101  &
   location = 901.2599434022, -61.0458574227, 6.949759763  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.MARKER_101  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.MARKER_148  &
   adams_id = 148  &
   location = 882.9886800116, -50.496940041, 6.9497600469  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.MARKER_148  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_5 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5  &
   adams_id = 57  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.PSMAR  &
   adams_id = 676  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.cm  &
   adams_id = 677  &
   location = 868.9259840494, -74.854243939, -23.1879626456  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.MARKER_99  &
   adams_id = 99  &
   location = 887.1972463697, -85.4031631744, -23.1879635887  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.MARKER_99  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.MARKER_146  &
   adams_id = 146  &
   location = 868.9259840494, -74.854243939, -23.1879626456  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.MARKER_146  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_6 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6  &
   adams_id = 58  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.PSMAR  &
   adams_id = 678  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.cm  &
   adams_id = 679  &
   location = 862.9073152985, -85.2788840094, 16.2382025987  &
   orientation = 4.1887902048, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.MARKER_97  &
   adams_id = 97  &
   location = 881.1785778735, -95.827802804, 16.2382038359  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.MARKER_97  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.MARKER_144  &
   adams_id = 144  &
   location = 862.9073152985, -85.2788840094, 16.2382025987  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.MARKER_144  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------ socket_head_cap_screw_iso_2 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2  &
   adams_id = 59  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2.PSMAR  &
   adams_id = 680  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2.cm  &
   adams_id = 681  &
   location = 847.4644167409, -58.6190576974, -8.7922470031  &
   orientation = 5.7595865316, 2.9143182164, 4.2847335943
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2.MARKER_128  &
   adams_id = 128  &
   location = 847.4644167409, -58.6190576974, -8.7922470031  &
   orientation = 2.617993878, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2.MARKER_128  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------- omniwheel_1_3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_1_3  &
   adams_id = 60  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.PSMAR  &
   adams_id = 682  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.cm  &
   adams_id = 683  &
   location = 750.0000086226, 135.4150715523, 1.2249985865E-006  &
   orientation = 1.5707963732, 1.2074663852, 2.0048504405E-008
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_139  &
   adams_id = 139  &
   location = 767.4000223093, 140.4200453263, 16.2382025987  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_139  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_141  &
   adams_id = 141  &
   location = 755.3626848076, 140.4200453263, -23.1879626456  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_141  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_143  &
   adams_id = 143  &
   location = 727.2372928831, 140.4200453263, 6.9497600469  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_143  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_176  &
   adams_id = 176  &
   location = 750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_176  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_241  &
   adams_id = 241  &
   location = 717.6459624298, 135.2161897113, 24.3611627987  &
   orientation = 4.7123889804, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_241  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_243  &
   adams_id = 243  &
   location = 709.5563157023, 135.2161897113, -2.1350410836  &
   orientation = 1.5707963268, 3.0888511416, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_243  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_245  &
   adams_id = 245  &
   location = 720.3907183392, 135.2161897113, -27.6322355146  &
   orientation = 1.5707963268, 2.3907194408, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_245  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_247  &
   adams_id = 247  &
   location = 745.0796329357, 135.2161897113, -40.1999998502  &
   orientation = 1.5707963268, 1.69258774, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_247  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_249  &
   adams_id = 249  &
   location = 772.0708419654, 135.2161897113, -33.9577374826  &
   orientation = 1.5707963268, 0.9944560393, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_249  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_251  &
   adams_id = 251  &
   location = 788.7348587494, 135.2161897113, -11.8262723488  &
   orientation = 1.5707963268, 0.2963243385, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_251  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_253  &
   adams_id = 253  &
   location = 787.2744046345, 135.2161897113, 15.8388370515  &
   orientation = 4.7123889804, 0.4018073624, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_253  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_255  &
   adams_id = 255  &
   location = 768.3728423323, 135.2161897113, 36.0927785662  &
   orientation = 4.7123889804, 1.0999390631, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_255  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_257  &
   adams_id = 257  &
   location = 740.8744229114, 135.2161897113, 39.4585078633  &
   orientation = 4.7123889804, 1.7980707639, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_257  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_1_3  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_1_3  &
   color = COLOR_R096G096B096  &
   visibility = on
!
!------------------------------- omniwheel_2_3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_2_3  &
   adams_id = 61  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_2_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.PSMAR  &
   adams_id = 684  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.cm  &
   adams_id = 685  &
   location = 749.9999949575, 156.0173068382, -4.1457722974E-006  &
   orientation = 1.5707962532, 2.7032710962, 6.2831852477
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_174  &
   adams_id = 174  &
   location = 750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_174  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_223  &
   adams_id = 223  &
   location = 727.9291580346, 156.2161897113, 33.9577374826  &
   orientation = 4.7123889804, 2.1471366143, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_223  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_225  &
   adams_id = 225  &
   location = 754.9203670643, 156.2161897113, 40.1999998502  &
   orientation = 4.7123889804, 1.4490049135, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_225  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_227  &
   adams_id = 227  &
   location = 779.6092816608, 156.2161897113, 27.6322355146  &
   orientation = 4.7123889804, 0.7508732127, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_227  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_229  &
   adams_id = 229  &
   location = 790.4436842977, 156.2161897113, 2.1350410836  &
   orientation = 4.7123889804, 5.2741511947E-002, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_229  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_231  &
   adams_id = 231  &
   location = 782.3540375702, 156.2161897113, -24.3611627987  &
   orientation = 1.5707963268, 0.6453901888, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_231  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_233  &
   adams_id = 233  &
   location = 759.1255770886, 156.2161897113, -39.4585078633  &
   orientation = 1.5707963268, 1.3435218897, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_233  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_235  &
   adams_id = 235  &
   location = 731.6271576677, 156.2161897113, -36.0927785662  &
   orientation = 1.5707963268, 2.0416535904, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_235  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_237  &
   adams_id = 237  &
   location = 712.7255953655, 156.2161897113, -15.8388370515  &
   orientation = 1.5707963268, 2.7397852912, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_237  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_239  &
   adams_id = 239  &
   location = 711.2651412506, 156.2161897113, 11.8262723488  &
   orientation = 4.7123889804, 2.8452683151, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_239  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_2_3  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_2_3  &
   color = COLOR_R089G086B086  &
   visibility = on
!
!------------------------------- Part1_banhxe_3 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part1_banhxe_3  &
   adams_id = 62  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part1_banhxe_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.PSMAR  &
   adams_id = 686  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.cm  &
   adams_id = 687  &
   location = 750.0, 145.7161897113, 0.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_175  &
   adams_id = 175  &
   location = 750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_175  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_177  &
   adams_id = 177  &
   location = 750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_177  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_178  &
   adams_id = 178  &
   location = 750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_178  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part1_banhxe_3  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part1_banhxe_3  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------------- roller_37 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_37  &
   adams_id = 63  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_37
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_37.PSMAR  &
   adams_id = 688  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_37.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_37.cm  &
   adams_id = 689  &
   location = 740.8744229114, 135.2161897113, 39.4585078633  &
   orientation = 4.7123889804, 1.7980707639, 1.5318709251
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_37.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_37.MARKER_256  &
   adams_id = 256  &
   location = 740.8744229114, 135.2161897113, 39.4585078633  &
   orientation = 4.7123889804, 1.7980707639, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_37.MARKER_256  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_37  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_37  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_38 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_38  &
   adams_id = 64  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_38
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_38.PSMAR  &
   adams_id = 690  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_38.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_38.cm  &
   adams_id = 691  &
   location = 768.3728423323, 135.2161897113, 36.0927785662  &
   orientation = 4.7123889804, 1.0999390631, 1.3572283018
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_38.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_38.MARKER_254  &
   adams_id = 254  &
   location = 768.3728423323, 135.2161897113, 36.0927785662  &
   orientation = 4.7123889804, 1.0999390631, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_38.MARKER_254  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_38  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_38  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_39 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_39  &
   adams_id = 65  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_39
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_39.PSMAR  &
   adams_id = 692  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_39.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_39.cm  &
   adams_id = 693  &
   location = 787.2744046345, 135.2161897113, 15.8388370515  &
   orientation = 4.7123889804, 0.4018073624, 1.3166886398
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_39.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_39.MARKER_252  &
   adams_id = 252  &
   location = 787.2744046345, 135.2161897113, 15.8388370515  &
   orientation = 4.7123889804, 0.4018073624, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_39.MARKER_252  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_39  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_39  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_40 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_40  &
   adams_id = 66  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_40
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_40.PSMAR  &
   adams_id = 694  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_40.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_40.cm  &
   adams_id = 695  &
   location = 788.7348587494, 135.2161897113, -11.8262723488  &
   orientation = 1.5707963268, 0.2963243385, 4.7123889804
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_40.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_40.MARKER_250  &
   adams_id = 250  &
   location = 788.7348587494, 135.2161897113, -11.8262723488  &
   orientation = 1.5707963268, 0.2963243385, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_40.MARKER_250  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_40  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_40  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_41 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_41  &
   adams_id = 67  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_41
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_41.PSMAR  &
   adams_id = 696  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_41.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_41.cm  &
   adams_id = 697  &
   location = 772.0708419654, 135.2161897113, -33.9577374826  &
   orientation = 1.5707963268, 0.9944560393, 0.5516927043
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_41.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_41.MARKER_248  &
   adams_id = 248  &
   location = 772.0708419654, 135.2161897113, -33.9577374826  &
   orientation = 1.5707963268, 0.9944560393, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_41.MARKER_248  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_41  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_41  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_42 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_42  &
   adams_id = 68  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_42
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_42.PSMAR  &
   adams_id = 698  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_42.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_42.cm  &
   adams_id = 699  &
   location = 745.0796329357, 135.2161897113, -40.1999998502  &
   orientation = 1.5707963268, 1.69258774, 6.2718886549
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_42.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_42.MARKER_246  &
   adams_id = 246  &
   location = 745.0796329357, 135.2161897113, -40.1999998502  &
   orientation = 1.5707963268, 1.69258774, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_42.MARKER_246  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_42  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_42  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_43 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_43  &
   adams_id = 69  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_43
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_43.PSMAR  &
   adams_id = 700  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_43.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_43.cm  &
   adams_id = 701  &
   location = 720.3907183392, 135.2161897113, -27.6322355146  &
   orientation = 4.7123889804, 0.7508732127, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_43.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_43.MARKER_244  &
   adams_id = 244  &
   location = 720.3907183392, 135.2161897113, -27.6322355146  &
   orientation = 1.5707963268, 2.3907194408, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_43.MARKER_244  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_43  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_43  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_44 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_44  &
   adams_id = 70  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_44
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_44.PSMAR  &
   adams_id = 702  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_44.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_44.cm  &
   adams_id = 703  &
   location = 709.5563157023, 135.2161897113, -2.1350410836  &
   orientation = 4.7123889804, 5.2741511947E-002, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_44.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_44.MARKER_242  &
   adams_id = 242  &
   location = 709.5563157023, 135.2161897113, -2.1350410836  &
   orientation = 1.5707963268, 3.0888511416, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_44.MARKER_242  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_44  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_44  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_45 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_45  &
   adams_id = 71  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_45
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_45.PSMAR  &
   adams_id = 704  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_45.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_45.cm  &
   adams_id = 705  &
   location = 717.6459624298, 135.2161897113, 24.3611627987  &
   orientation = 1.5707963268, 0.6453901888, 4.7123889804
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_45.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_45.MARKER_240  &
   adams_id = 240  &
   location = 717.6459624298, 135.2161897113, 24.3611627987  &
   orientation = 4.7123889804, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_45.MARKER_240  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_45  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_45  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_46 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_46  &
   adams_id = 72  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_46
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_46.PSMAR  &
   adams_id = 706  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_46.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_46.cm  &
   adams_id = 707  &
   location = 711.2651412506, 156.2161897113, 11.8262723488  &
   orientation = 1.5707963268, 0.2963243385, 4.7123889804
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_46.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_46.MARKER_238  &
   adams_id = 238  &
   location = 711.2651412506, 156.2161897113, 11.8262723488  &
   orientation = 4.7123889804, 2.8452683151, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_46.MARKER_238  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_46  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_46  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_47 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_47  &
   adams_id = 73  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_47
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_47.PSMAR  &
   adams_id = 708  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_47.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_47.cm  &
   adams_id = 709  &
   location = 712.7255953655, 156.2161897113, -15.8388370515  &
   orientation = 4.7123889804, 0.4018073623, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_47.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_47.MARKER_236  &
   adams_id = 236  &
   location = 712.7255953655, 156.2161897113, -15.8388370515  &
   orientation = 1.5707963268, 2.7397852912, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_47.MARKER_236  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_47  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_47  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_48 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_48  &
   adams_id = 74  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_48
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_48.PSMAR  &
   adams_id = 710  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_48.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_48.cm  &
   adams_id = 711  &
   location = 731.6271576677, 156.2161897113, -36.0927785662  &
   orientation = 4.7123889804, 1.0999390631, 2.0144566231
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_48.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_48.MARKER_234  &
   adams_id = 234  &
   location = 731.6271576677, 156.2161897113, -36.0927785662  &
   orientation = 1.5707963268, 2.0416535904, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_48.MARKER_234  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_48  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_48  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_49 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_49  &
   adams_id = 75  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_49
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_49.PSMAR  &
   adams_id = 712  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_49.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_49.cm  &
   adams_id = 713  &
   location = 759.1255770886, 156.2161897113, -39.4585078633  &
   orientation = 4.7123889804, 1.7980707639, 1.8968799489
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_49.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_49.MARKER_232  &
   adams_id = 232  &
   location = 759.1255770886, 156.2161897113, -39.4585078633  &
   orientation = 1.5707963268, 1.3435218897, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_49.MARKER_232  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_49  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_49  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_50 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_50  &
   adams_id = 76  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_50
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_50.PSMAR  &
   adams_id = 714  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_50.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_50.cm  &
   adams_id = 715  &
   location = 782.3540375702, 156.2161897113, -24.3611627987  &
   orientation = 1.5707963268, 0.6453901888, 4.7123889804
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_50.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_50.MARKER_230  &
   adams_id = 230  &
   location = 782.3540375702, 156.2161897113, -24.3611627987  &
   orientation = 1.5707963268, 0.6453901888, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_50.MARKER_230  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_50  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_50  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_51 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_51  &
   adams_id = 77  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_51
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_51.PSMAR  &
   adams_id = 716  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_51.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_51.cm  &
   adams_id = 717  &
   location = 790.4436842977, 156.2161897113, 2.1350410836  &
   orientation = 4.7123889804, 5.2741511947E-002, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_51.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_51.MARKER_228  &
   adams_id = 228  &
   location = 790.4436842977, 156.2161897113, 2.1350410836  &
   orientation = 4.7123889804, 5.2741511947E-002, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_51.MARKER_228  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_51  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_51  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_52 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_52  &
   adams_id = 78  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_52
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_52.PSMAR  &
   adams_id = 718  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_52.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_52.cm  &
   adams_id = 719  &
   location = 779.6092816608, 156.2161897113, 27.6322355146  &
   orientation = 4.7123889804, 0.7508732127, 1.204834579
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_52.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_52.MARKER_226  &
   adams_id = 226  &
   location = 779.6092816608, 156.2161897113, 27.6322355146  &
   orientation = 4.7123889804, 0.7508732127, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_52.MARKER_226  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_52  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_52  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_53 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_53  &
   adams_id = 79  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_53
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_53.PSMAR  &
   adams_id = 720  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_53.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_53.cm  &
   adams_id = 721  &
   location = 754.9203670643, 156.2161897113, 40.1999998502  &
   orientation = 4.7123889804, 1.4490049135, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_53.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_53.MARKER_224  &
   adams_id = 224  &
   location = 754.9203670643, 156.2161897113, 40.1999998502  &
   orientation = 4.7123889804, 1.4490049135, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_53.MARKER_224  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_53  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_53  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_54 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_54  &
   adams_id = 80  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_54
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_54.PSMAR  &
   adams_id = 722  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_54.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_54.cm  &
   adams_id = 723  &
   location = 727.9291580346, 156.2161897113, 33.9577374826  &
   orientation = 4.7123889804, 2.1471366143, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_54.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_54.MARKER_222  &
   adams_id = 222  &
   location = 727.9291580346, 156.2161897113, 33.9577374826  &
   orientation = 4.7123889804, 2.1471366143, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_54.MARKER_222  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_54  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_54  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!------------------------------- Part3_banhxe_3 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part3_banhxe_3  &
   adams_id = 81  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part3_banhxe_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.PSMAR  &
   adams_id = 724  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.cm  &
   adams_id = 725  &
   location = 749.9886800275, 121.5808040261, 4.8958208775E-002  &
   orientation = 1.5707962246, 1.3435664549, 5.9157713778E-003
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_127  &
   adams_id = 127  &
   location = 752.0333847414, 113.7161897113, -8.7922470031  &
   orientation = 4.7123889804, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_127  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_179  &
   adams_id = 179  &
   location = 750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_179  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_210  &
   adams_id = 210  &
   location = 750.0, 106.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_210  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_438  &
   adams_id = 438  &
   location = 750.0, 106.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_438  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_439  &
   adams_id = 439  &
   location = 750.0, 106.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_439  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part3_banhxe_3  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part3_banhxe_3  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!---------------------------- hex_nut_gradec_iso_7 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_7  &
   adams_id = 82  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_7.PSMAR  &
   adams_id = 726  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_7.cm  &
   adams_id = 727  &
   location = 727.2372916228, 161.5178822726, 6.949759763  &
   orientation = 1.5707963276, 1.3236552231, 1.4602497668E-010
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_7.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_7.MARKER_94  &
   adams_id = 94  &
   location = 727.2372916228, 161.5178822726, 6.949759763  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_7.MARKER_94  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_7  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_7  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!---------------------------- hex_nut_gradec_iso_8 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_8  &
   adams_id = 83  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_8.PSMAR  &
   adams_id = 728  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_8.cm  &
   adams_id = 729  &
   location = 755.3626856878, 161.5178822726, -23.1879635887  &
   orientation = 1.5707963257, 2.3713428433, 6.2831853064
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_8.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_8.MARKER_92  &
   adams_id = 92  &
   location = 755.3626856878, 161.5178822726, -23.1879635887  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_8.MARKER_92  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_8  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_8  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!---------------------------- hex_nut_gradec_iso_9 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_9  &
   adams_id = 84  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_9.PSMAR  &
   adams_id = 730  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_9.cm  &
   adams_id = 731  &
   location = 767.4000226386, 161.5178822726, 16.238203861  &
   orientation = 4.7123889763, 2.8612110952, 3.1415926473
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_9.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_9.MARKER_90  &
   adams_id = 90  &
   location = 767.4000226386, 161.5178822726, 16.238203861  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_9.MARKER_90  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_9  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_9  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_7 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7  &
   adams_id = 85  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.PSMAR  &
   adams_id = 732  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.cm  &
   adams_id = 733  &
   location = 727.2372928831, 140.4200453263, 6.9497600469  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.MARKER_95  &
   adams_id = 95  &
   location = 727.2372916228, 161.5178822726, 6.949759763  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.MARKER_95  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.MARKER_142  &
   adams_id = 142  &
   location = 727.2372928831, 140.4200453263, 6.9497600469  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.MARKER_142  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_8 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8  &
   adams_id = 86  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.PSMAR  &
   adams_id = 734  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.cm  &
   adams_id = 735  &
   location = 755.3626848076, 140.4200453263, -23.1879626456  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.MARKER_93  &
   adams_id = 93  &
   location = 755.3626856878, 161.5178822726, -23.1879635887  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.MARKER_93  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.MARKER_140  &
   adams_id = 140  &
   location = 755.3626848076, 140.4200453263, -23.1879626456  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.MARKER_140  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_9 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9  &
   adams_id = 87  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.PSMAR  &
   adams_id = 736  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.cm  &
   adams_id = 737  &
   location = 767.4000223093, 140.4200453263, 16.2382025987  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.MARKER_91  &
   adams_id = 91  &
   location = 767.4000226386, 161.5178822726, 16.238203861  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.MARKER_91  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.MARKER_138  &
   adams_id = 138  &
   location = 767.4000223093, 140.4200453263, 16.2382025987  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.MARKER_138  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------ socket_head_cap_screw_iso_3 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_3  &
   adams_id = 88  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_3.PSMAR  &
   adams_id = 738  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_3.cm  &
   adams_id = 739  &
   location = 752.0333847414, 113.7161897113, -8.7922470031  &
   orientation = 4.7123889804, 0.2272744371, 1.689198933
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_3.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_3.MARKER_126  &
   adams_id = 126  &
   location = 752.0333847414, 113.7161897113, -8.7922470031  &
   orientation = 4.7123889804, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_3.MARKER_126  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_3  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_3  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!-------------------------------- khung_duoi_1 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.khung_duoi_1  &
   adams_id = 89  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.khung_duoi_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.PSMAR  &
   adams_id = 740  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.cm  &
   adams_id = 741  &
   location = 750.0, 0.0, -6.2009871309  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_2  &
   adams_id = 2  &
   location = 750.0, 0.0, 40.78  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_2  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_7  &
   adams_id = 7  &
   location = 743.9532101936, -67.4516955531, -9.8824969825  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_7  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_9  &
   adams_id = 9  &
   location = 743.9532101936, -67.4516955531, 5.1175030175  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_9  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_11  &
   adams_id = 11  &
   location = 743.9532101936, -67.4516955531, 20.1175030175  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_11  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_13  &
   adams_id = 13  &
   location = 805.1351007893, 36.723066223, -9.0782751863  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_13  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_15  &
   adams_id = 15  &
   location = 800.2732131788, 28.4032025669, 9.4282512441  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_15  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_17  &
   adams_id = 17  &
   location = 692.40338741, 33.2473006948, -0.7271628705  &
   orientation = 5.7668504503, 2.2590978787E-004, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_17  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_55  &
   adams_id = 55  &
   location = 734.5, 101.7239305684, 7.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_55  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_57  &
   adams_id = 57  &
   location = 845.845508045, -37.4385715255, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_57  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_59  &
   adams_id = 59  &
   location = 765.5, 101.7239305684, 7.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_59  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_61  &
   adams_id = 61  &
   location = 830.345508045, -64.2853590429, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_61  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_63  &
   adams_id = 63  &
   location = 654.154491955, -37.4385715255, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_63  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_65  &
   adams_id = 65  &
   location = 669.654491955, -64.2853590429, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_65  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_79  &
   adams_id = 79  &
   location = 749.9556109225, 65.4416458972, 6.8760328871  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_79  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_81  &
   adams_id = 81  &
   location = 806.6963223292, -32.6823808709, 6.8760328927  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_81  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_83  &
   adams_id = 83  &
   location = 693.3480667301, -32.7592650211, 6.876032889  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_83  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.khung_duoi_1  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.khung_duoi_1  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------- DC_12v_251rpm --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DC_12v_251rpm  &
   adams_id = 90  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DC_12v_251rpm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm.PSMAR  &
   adams_id = 742  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm.cm  &
   adams_id = 743  &
   location = 693.3480667301, -32.7592650211, 6.876032889  &
   orientation = 2.0911657655, 1.5568916227, 6.2756593553
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm.MARKER_82  &
   adams_id = 82  &
   location = 693.3480667301, -32.7592650211, 6.876032889  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm.MARKER_82  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm.MARKER_215  &
   adams_id = 215  &
   location = 657.5810687149, -53.3580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm.MARKER_215  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm  &
   density = 3.64E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DC_12v_251rpm  &
   color = NO_COLOR  &
   visibility = on
!
!------------------------------ DC_12v_251rpm_2 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_2  &
   adams_id = 91  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DC_12v_251rpm_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_2.PSMAR  &
   adams_id = 744  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_2.cm  &
   adams_id = 745  &
   location = 806.6963223292, -32.6823808709, 6.8760328927  &
   orientation = 1.0439682135, 1.5847010304, 7.5259138128E-003
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_2.MARKER_80  &
   adams_id = 80  &
   location = 806.6963223292, -32.6823808709, 6.8760328927  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_2.MARKER_80  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_2.MARKER_213  &
   adams_id = 213  &
   location = 842.4189312851, -53.3580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_2.MARKER_213  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_2  &
   density = 3.64E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_2  &
   color = NO_COLOR  &
   visibility = on
!
!------------------------------ DC_12v_251rpm_3 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_3  &
   adams_id = 92  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DC_12v_251rpm_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_3.PSMAR  &
   adams_id = 746  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_3.cm  &
   adams_id = 747  &
   location = 749.9556109225, 65.4416458972, 6.8760328871  &
   orientation = 6.2799559698, 1.5568916226, 6.2756593794
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_3.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_3.MARKER_78  &
   adams_id = 78  &
   location = 749.9556109225, 65.4416458972, 6.8760328871  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_3.MARKER_78  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_3.MARKER_211  &
   adams_id = 211  &
   location = 750.0, 106.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_3.MARKER_211  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_3  &
   density = 3.64E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_3  &
   color = NO_COLOR  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_2 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2  &
   adams_id = 93  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2.PSMAR  &
   adams_id = 748  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2.cm  &
   adams_id = 749  &
   location = 669.654491955, -64.2853590429, 7.0  &
   orientation = 5.235987756, 1.5707963268, 1.5535120459
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2.MARKER_64  &
   adams_id = 64  &
   location = 669.654491955, -64.2853590429, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2.MARKER_64  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_3 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3  &
   adams_id = 94  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3.PSMAR  &
   adams_id = 750  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3.cm  &
   adams_id = 751  &
   location = 654.154491955, -37.4385715255, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 2.7481573023E-002
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3.MARKER_62  &
   adams_id = 62  &
   location = 654.154491955, -37.4385715255, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3.MARKER_62  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_4 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4  &
   adams_id = 95  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4.PSMAR  &
   adams_id = 752  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4.cm  &
   adams_id = 753  &
   location = 830.345508045, -64.2853590429, 7.0  &
   orientation = 4.1887902048, 1.5707963268, 1.5655839845
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4.MARKER_60  &
   adams_id = 60  &
   location = 830.345508045, -64.2853590429, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4.MARKER_60  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_5 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5  &
   adams_id = 96  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5.PSMAR  &
   adams_id = 754  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5.cm  &
   adams_id = 755  &
   location = 765.5, 101.7239305684, 7.0  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5.MARKER_58  &
   adams_id = 58  &
   location = 765.5, 101.7239305684, 7.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5.MARKER_58  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_6 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6  &
   adams_id = 97  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6.PSMAR  &
   adams_id = 756  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6.cm  &
   adams_id = 757  &
   location = 845.845508045, -37.4385715255, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 3.0880228703E-003
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6.MARKER_56  &
   adams_id = 56  &
   location = 845.845508045, -37.4385715255, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6.MARKER_56  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_7 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7  &
   adams_id = 98  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7.PSMAR  &
   adams_id = 758  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7.cm  &
   adams_id = 759  &
   location = 734.5, 101.7239305684, 7.0  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7.MARKER_54  &
   adams_id = 54  &
   location = 734.5, 101.7239305684, 7.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7.MARKER_54  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!-------------------------------- Arduino_UNO ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Arduino_UNO  &
   adams_id = 99  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Arduino_UNO
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Arduino_UNO.PSMAR  &
   adams_id = 760  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Arduino_UNO.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Arduino_UNO.cm  &
   adams_id = 761  &
   location = 805.1351007893, 36.723066223, -9.0782751863  &
   orientation = 3.5299897107, 1.5448322504, 1.6009761213
!
marker attributes  &
   marker_name = .Robot_Formation_1.Arduino_UNO.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Arduino_UNO.MARKER_12  &
   adams_id = 12  &
   location = 805.1351007893, 36.723066223, -9.0782751863  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Arduino_UNO.MARKER_12  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Arduino_UNO  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Arduino_UNO  &
   color = COLOR_R000G048B176  &
   visibility = on
!
!------------------------------ DRIVER_cytron_13 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DRIVER_cytron_13  &
   adams_id = 123  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DRIVER_cytron_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR  &
   adams_id = 762  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR23  &
   adams_id = 763  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR23  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR22  &
   adams_id = 764  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR22  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR21  &
   adams_id = 765  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR21  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR20  &
   adams_id = 766  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR20  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR19  &
   adams_id = 767  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR19  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR18  &
   adams_id = 768  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR18  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR17  &
   adams_id = 769  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR17  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR16  &
   adams_id = 770  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR16  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR15  &
   adams_id = 771  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR15  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR14  &
   adams_id = 772  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR14  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR13  &
   adams_id = 773  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR13  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR12  &
   adams_id = 774  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR12  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR11  &
   adams_id = 775  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR11  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR10  &
   adams_id = 776  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR10  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR9  &
   adams_id = 777  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR9  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR8  &
   adams_id = 778  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR8  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR7  &
   adams_id = 779  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR7  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR6  &
   adams_id = 780  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR6  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR5  &
   adams_id = 781  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR4  &
   adams_id = 782  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR3  &
   adams_id = 783  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR2  &
   adams_id = 784  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR1  &
   adams_id = 785  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.cm  &
   adams_id = 786  &
   location = 743.9532101936, -67.4516955531, -9.8824969825  &
   orientation = 4.6672721548, 1.5247219754, 1.5327380278
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.MARKER_6  &
   adams_id = 6  &
   location = 743.9532101936, -67.4516955531, -9.8824969825  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_13.MARKER_6  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_13  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DRIVER_cytron_13  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!------------------------------ DRIVER_cytron_12 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DRIVER_cytron_12  &
   adams_id = 147  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DRIVER_cytron_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR  &
   adams_id = 787  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR23  &
   adams_id = 788  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR23  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR22  &
   adams_id = 789  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR22  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR21  &
   adams_id = 790  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR21  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR20  &
   adams_id = 791  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR20  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR19  &
   adams_id = 792  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR19  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR18  &
   adams_id = 793  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR18  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR17  &
   adams_id = 794  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR17  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR16  &
   adams_id = 795  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR16  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR15  &
   adams_id = 796  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR15  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR14  &
   adams_id = 797  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR14  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR13  &
   adams_id = 798  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR13  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR12  &
   adams_id = 799  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR12  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR11  &
   adams_id = 800  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR11  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR10  &
   adams_id = 801  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR10  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR9  &
   adams_id = 802  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR9  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR8  &
   adams_id = 803  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR8  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR7  &
   adams_id = 804  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR7  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR6  &
   adams_id = 805  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR6  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR5  &
   adams_id = 806  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR4  &
   adams_id = 807  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR3  &
   adams_id = 808  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR2  &
   adams_id = 809  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR1  &
   adams_id = 810  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.cm  &
   adams_id = 811  &
   location = 743.9532101936, -67.4516955531, 5.1175030175  &
   orientation = 4.6672721548, 1.5247219754, 1.5327380278
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.MARKER_8  &
   adams_id = 8  &
   location = 743.9532101936, -67.4516955531, 5.1175030175  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_12.MARKER_8  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_12  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DRIVER_cytron_12  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!------------------------------ DRIVER_cytron_11 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DRIVER_cytron_11  &
   adams_id = 171  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DRIVER_cytron_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR  &
   adams_id = 812  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR23  &
   adams_id = 813  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR23  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR22  &
   adams_id = 814  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR22  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR21  &
   adams_id = 815  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR21  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR20  &
   adams_id = 816  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR20  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR19  &
   adams_id = 817  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR19  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR18  &
   adams_id = 818  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR18  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR17  &
   adams_id = 819  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR17  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR16  &
   adams_id = 820  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR16  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR15  &
   adams_id = 821  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR15  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR14  &
   adams_id = 822  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR14  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR13  &
   adams_id = 823  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR13  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR12  &
   adams_id = 824  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR12  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR11  &
   adams_id = 825  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR11  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR10  &
   adams_id = 826  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR10  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR9  &
   adams_id = 827  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR9  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR8  &
   adams_id = 828  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR8  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR7  &
   adams_id = 829  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR7  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR6  &
   adams_id = 830  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR6  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR5  &
   adams_id = 831  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR4  &
   adams_id = 832  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR3  &
   adams_id = 833  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR2  &
   adams_id = 834  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR1  &
   adams_id = 835  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.cm  &
   adams_id = 836  &
   location = 743.9532101936, -67.4516955531, 20.1175030175  &
   orientation = 4.6672721548, 1.5247219754, 1.5327380278
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.MARKER_10  &
   adams_id = 10  &
   location = 743.9532101936, -67.4516955531, 20.1175030175  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_11.MARKER_10  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_11  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DRIVER_cytron_11  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!--------------------------------- pin_li_po ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.pin_li_po  &
   adams_id = 172  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.pin_li_po
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.pin_li_po.PSMAR  &
   adams_id = 837  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.pin_li_po.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.pin_li_po.cm  &
   adams_id = 838  &
   location = 692.40338741, 33.2473006948, -0.7271628705  &
   orientation = 2.6182286308, 1.5705704226, 1.5707979147
!
marker attributes  &
   marker_name = .Robot_Formation_1.pin_li_po.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.pin_li_po.MARKER_16  &
   adams_id = 16  &
   location = 692.40338741, 33.2473006948, -0.7271628705  &
   orientation = 5.7668504503, 2.2590978787E-004, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.pin_li_po.MARKER_16  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.pin_li_po.MARKER_453  &
   adams_id = 453  &
   location = 692.40338741, 33.2473006948, -0.7271628705  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.pin_li_po.MARKER_453  &
   visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .Robot_Formation_1.pin_li_po.FMARKER_454  &
   adams_id = 454
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.pin_li_po  &
   density = 3.46E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.pin_li_po  &
   color = NO_COLOR  &
   visibility = on
!
!----------------------------------- HC_06 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.HC_06  &
   adams_id = 173  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.HC_06
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.HC_06.PSMAR  &
   adams_id = 839  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.HC_06.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.HC_06.cm  &
   adams_id = 840  &
   location = 800.2732131788, 28.4032025669, 9.4282512441  &
   orientation = 3.6638963999, 1.5783411151, 1.5631578687
!
marker attributes  &
   marker_name = .Robot_Formation_1.HC_06.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.HC_06.MARKER_14  &
   adams_id = 14  &
   location = 800.2732131788, 28.4032025669, 9.4282512441  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.HC_06.MARKER_14  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.HC_06  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.HC_06  &
   color = COLOR_R112G064B064  &
   visibility = on
!
!--------------------------------- khung_tren ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.khung_tren  &
   adams_id = 174  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.khung_tren
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.PSMAR  &
   adams_id = 841  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.cm  &
   adams_id = 842  &
   location = 750.0, 0.0, 39.28  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_3  &
   adams_id = 3  &
   location = 750.0, 0.0, 40.78  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_3  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_31  &
   adams_id = 31  &
   location = 760.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_31  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_33  &
   adams_id = 33  &
   location = 740.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_33  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_35  &
   adams_id = 35  &
   location = 823.4066775468, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_35  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_37  &
   adams_id = 37  &
   location = 833.4066775468, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_37  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_39  &
   adams_id = 39  &
   location = 666.5933224532, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_39  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_41  &
   adams_id = 41  &
   location = 676.5933224532, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_41  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_450  &
   adams_id = 450  &
   location = 750.0, 0.0, 39.28  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren.MARKER_450  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.khung_tren  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.khung_tren  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------ socket_head_cap_screw_iso_0 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0  &
   adams_id = 175  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0.PSMAR  &
   adams_id = 843  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0.cm  &
   adams_id = 844  &
   location = 676.5933224532, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0.MARKER_40  &
   adams_id = 40  &
   location = 676.5933224532, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0.MARKER_40  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_2 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2  &
   adams_id = 176  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2.PSMAR  &
   adams_id = 845  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2.cm  &
   adams_id = 846  &
   location = 666.5933224532, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2.MARKER_38  &
   adams_id = 38  &
   location = 666.5933224532, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2.MARKER_38  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_3 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3  &
   adams_id = 177  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3.PSMAR  &
   adams_id = 847  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3.cm  &
   adams_id = 848  &
   location = 833.4066775468, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3.MARKER_36  &
   adams_id = 36  &
   location = 833.4066775468, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3.MARKER_36  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_4 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4  &
   adams_id = 178  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4.PSMAR  &
   adams_id = 849  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4.cm  &
   adams_id = 850  &
   location = 823.4066775468, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4.MARKER_34  &
   adams_id = 34  &
   location = 823.4066775468, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4.MARKER_34  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_5 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5  &
   adams_id = 179  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5.PSMAR  &
   adams_id = 851  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5.cm  &
   adams_id = 852  &
   location = 740.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5.MARKER_32  &
   adams_id = 32  &
   location = 740.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5.MARKER_32  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_6 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6  &
   adams_id = 180  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6.PSMAR  &
   adams_id = 853  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6.cm  &
   adams_id = 854  &
   location = 760.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6.MARKER_30  &
   adams_id = 30  &
   location = 760.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6.MARKER_30  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------- omniwheel_1_4 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_1_4  &
   adams_id = 181  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_1_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.PSMAR  &
   adams_id = 855  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.cm  &
   adams_id = 856  &
   location = -867.2728953775, -67.7075339772, 3.8413117138E-006  &
   orientation = 0.523598778, 2.1867007679, 1.9474992786E-008
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_169  &
   adams_id = 169  &
   location = -880.3073376078, -55.1411613169, 16.2382025987  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_169  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_171  &
   adams_id = 171  &
   location = -874.288668857, -65.5658013873, -23.1879626456  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_171  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_173  &
   adams_id = 173  &
   location = -860.2259728947, -89.9231052853, 6.9497600469  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_173  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_206  &
   adams_id = 206  &
   location = -876.1939220327, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_206  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_421  &
   adams_id = 421  &
   location = -850.9236365078, -95.6275133065, 24.3611627987  &
   orientation = 0.5235987756, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_421  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_423  &
   adams_id = 423  &
   location = -846.8788131441, -102.6333528801, -2.1350410836  &
   orientation = 3.6651914292, 3.0888511416, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_423  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_425  &
   adams_id = 425  &
   location = -852.2960144626, -93.2504849617, -27.6322355146  &
   orientation = 3.6651914292, 2.3907194409, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_425  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_427  &
   adams_id = 427  &
   location = -864.6404717608, -71.8692577293, -40.1999998502  &
   orientation = 3.6651914292, 1.69258774, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_427  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_429  &
   adams_id = 429  &
   location = -878.1360762756, -48.4941850307, -33.9577374826  &
   orientation = 3.6651914292, 0.9944560392, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_429  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_431  &
   adams_id = 431  &
   location = -886.4680846676, -34.0627231667, -11.8262723488  &
   orientation = 3.6651914292, 0.2963243385, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_431  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_433  &
   adams_id = 433  &
   location = -885.7378576102, -35.3275135312, 15.8388370515  &
   orientation = 0.5235987756, 0.4018073623, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_433  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_435  &
   adams_id = 435  &
   location = -876.2870764591, -51.6967466562, 36.0927785662  &
   orientation = 0.5235987756, 1.0999390631, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_435  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_437  &
   adams_id = 437  &
   location = -862.5378667487, -75.5110764386, 39.4585078633  &
   orientation = 0.5235987756, 1.7980707639, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_437  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_1_4  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_1_4  &
   color = COLOR_R096G096B096  &
   visibility = on
!
!------------------------------- omniwheel_2_4 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_2_4  &
   adams_id = 182  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_2_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.PSMAR  &
   adams_id = 857  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.cm  &
   adams_id = 858  &
   location = -885.1149486236, -78.0086550107, -2.8680775007E-006  &
   orientation = 3.6651914241, 0.6139831812, 3.1415926326
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_204  &
   adams_id = 204  &
   location = -876.1939220327, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_204  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_403  &
   adams_id = 403  &
   location = -874.2517677897, -97.2220046806, 33.9577374826  &
   orientation = 0.5235987756, 2.1471366143, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_403  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_405  &
   adams_id = 405  &
   location = -887.7473723046, -73.846931982, 40.1999998502  &
   orientation = 0.5235987756, 1.4490049135, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_405  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_407  &
   adams_id = 407  &
   location = -900.0918296028, -52.4657047496, 27.6322355146  &
   orientation = 0.5235987756, 0.7508732127, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_407  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_409  &
   adams_id = 409  &
   location = -905.5090309213, -43.0828368312, 2.1350410836  &
   orientation = 0.5235987756, 5.2741511947E-002, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_409  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_411  &
   adams_id = 411  &
   location = -901.4642075575, -50.0886764049, -24.3611627987  &
   orientation = 3.6651914292, 0.6453901889, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_411  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_413  &
   adams_id = 413  &
   location = -889.8499773167, -70.2051132728, -39.4585078633  &
   orientation = 3.6651914292, 1.3435218896, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_413  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_415  &
   adams_id = 415  &
   location = -876.1007676063, -94.0194430552, -36.0927785662  &
   orientation = 3.6651914292, 2.0416535904, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_415  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_417  &
   adams_id = 417  &
   location = -866.6499864552, -110.3886761801, -15.8388370515  &
   orientation = 3.6651914292, 2.7397852912, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_417  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_419  &
   adams_id = 419  &
   location = -865.9197593977, -111.6534665446, 11.8262723488  &
   orientation = 0.5235987756, 2.8452683151, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_419  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_2_4  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_2_4  &
   color = COLOR_R089G086B086  &
   visibility = on
!
!------------------------------- Part1_banhxe_4 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part1_banhxe_4  &
   adams_id = 183  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part1_banhxe_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.PSMAR  &
   adams_id = 859  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.cm  &
   adams_id = 860  &
   location = -876.1939220327, -72.8580948557, 0.0  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_205  &
   adams_id = 205  &
   location = -876.1939220327, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_205  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_207  &
   adams_id = 207  &
   location = -876.1939220327, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_207  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_208  &
   adams_id = 208  &
   location = -876.1939220327, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_208  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part1_banhxe_4  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part1_banhxe_4  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------------- roller_55 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_55  &
   adams_id = 184  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_55
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_55.PSMAR  &
   adams_id = 861  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_55.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_55.cm  &
   adams_id = 862  &
   location = -862.5378667487, -75.5110764386, 39.4585078633  &
   orientation = 3.6651914292, 1.3435218897, 1.4774711874
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_55.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_55.MARKER_436  &
   adams_id = 436  &
   location = -862.5378667487, -75.5110764386, 39.4585078633  &
   orientation = 0.5235987756, 1.7980707639, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_55.MARKER_436  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_55  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_55  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_56 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_56  &
   adams_id = 185  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_56
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_56.PSMAR  &
   adams_id = 863  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_56.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_56.cm  &
   adams_id = 864  &
   location = -876.2870764591, -51.6967466562, 36.0927785662  &
   orientation = 0.5235987756, 1.0999390631, 0.4623015273
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_56.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_56.MARKER_434  &
   adams_id = 434  &
   location = -876.2870764591, -51.6967466562, 36.0927785662  &
   orientation = 0.5235987756, 1.0999390631, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_56.MARKER_434  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_56  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_56  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_57 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_57  &
   adams_id = 186  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_57
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_57.PSMAR  &
   adams_id = 865  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_57.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_57.cm  &
   adams_id = 866  &
   location = -885.7378576102, -35.3275135312, 15.8388370515  &
   orientation = 0.5235987756, 0.4018073623, 5.7237715383
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_57.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_57.MARKER_432  &
   adams_id = 432  &
   location = -885.7378576102, -35.3275135312, 15.8388370515  &
   orientation = 0.5235987756, 0.4018073623, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_57.MARKER_432  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_57  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_57  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_58 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_58  &
   adams_id = 187  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_58
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_58.PSMAR  &
   adams_id = 867  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_58.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_58.cm  &
   adams_id = 868  &
   location = -886.4680846676, -34.0627231667, -11.8262723488  &
   orientation = 0.5235987756, 2.8452683151, 5.0810404676
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_58.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_58.MARKER_430  &
   adams_id = 430  &
   location = -886.4680846676, -34.0627231667, -11.8262723488  &
   orientation = 3.6651914292, 0.2963243385, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_58.MARKER_430  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_58  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_58  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_59 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_59  &
   adams_id = 188  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_59
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_59.PSMAR  &
   adams_id = 869  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_59.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_59.cm  &
   adams_id = 870  &
   location = -878.1360762756, -48.4941850307, -33.9577374826  &
   orientation = 3.6651914292, 0.9944560393, 1.1732542085
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_59.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_59.MARKER_428  &
   adams_id = 428  &
   location = -878.1360762756, -48.4941850307, -33.9577374826  &
   orientation = 3.6651914292, 0.9944560392, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_59.MARKER_428  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_59  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_59  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_60 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_60  &
   adams_id = 189  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_60
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_60.PSMAR  &
   adams_id = 871  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_60.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_60.cm  &
   adams_id = 872  &
   location = -864.6404717608, -71.8692577293, -40.1999998502  &
   orientation = 3.6651914292, 1.69258774, 1.4839581338
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_60.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_60.MARKER_426  &
   adams_id = 426  &
   location = -864.6404717608, -71.8692577293, -40.1999998502  &
   orientation = 3.6651914292, 1.69258774, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_60.MARKER_426  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_60  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_60  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_61 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_61  &
   adams_id = 190  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_61
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_61.PSMAR  &
   adams_id = 873  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_61.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_61.cm  &
   adams_id = 874  &
   location = -852.2960144626, -93.2504849617, -27.6322355146  &
   orientation = 0.5235987756, 0.7508732127, 0.5279705693
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_61.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_61.MARKER_424  &
   adams_id = 424  &
   location = -852.2960144626, -93.2504849617, -27.6322355146  &
   orientation = 3.6651914292, 2.3907194409, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_61.MARKER_424  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_61  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_61  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_62 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_62  &
   adams_id = 191  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_62
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_62.PSMAR  &
   adams_id = 875  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_62.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_62.cm  &
   adams_id = 876  &
   location = -846.8788131441, -102.6333528801, -2.1350410836  &
   orientation = 3.6651914292, 3.0888511416, 1.2876551984
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_62.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_62.MARKER_422  &
   adams_id = 422  &
   location = -846.8788131441, -102.6333528801, -2.1350410836  &
   orientation = 3.6651914292, 3.0888511416, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_62.MARKER_422  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_62  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_62  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_63 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_63  &
   adams_id = 192  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_63
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_63.PSMAR  &
   adams_id = 877  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_63.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_63.cm  &
   adams_id = 878  &
   location = -850.9236365078, -95.6275133065, 24.3611627987  &
   orientation = 0.5235987756, 2.4962024647, 5.1830954659
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_63.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_63.MARKER_420  &
   adams_id = 420  &
   location = -850.9236365078, -95.6275133065, 24.3611627987  &
   orientation = 0.5235987756, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_63.MARKER_420  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_63  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_63  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_64 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_64  &
   adams_id = 193  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_64
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_64.PSMAR  &
   adams_id = 879  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_64.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_64.cm  &
   adams_id = 880  &
   location = -865.9197593977, -111.6534665446, 11.8262723488  &
   orientation = 3.6651914292, 0.2963243385, 2.8008347385
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_64.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_64.MARKER_418  &
   adams_id = 418  &
   location = -865.9197593977, -111.6534665446, 11.8262723488  &
   orientation = 0.5235987756, 2.8452683151, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_64.MARKER_418  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_64  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_64  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_65 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_65  &
   adams_id = 194  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_65
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_65.PSMAR  &
   adams_id = 881  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_65.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_65.cm  &
   adams_id = 882  &
   location = -866.6499864552, -110.3886761801, -15.8388370515  &
   orientation = 0.5235987756, 0.4018073623, 0.2762555103
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_65.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_65.MARKER_416  &
   adams_id = 416  &
   location = -866.6499864552, -110.3886761801, -15.8388370515  &
   orientation = 3.6651914292, 2.7397852912, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_65.MARKER_416  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_65  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_65  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_66 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_66  &
   adams_id = 195  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_66
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_66.PSMAR  &
   adams_id = 883  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_66.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_66.cm  &
   adams_id = 884  &
   location = -876.1007676063, -94.0194430552, -36.0927785662  &
   orientation = 0.5235987756, 1.0999390631, 6.2225598012
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_66.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_66.MARKER_414  &
   adams_id = 414  &
   location = -876.1007676063, -94.0194430552, -36.0927785662  &
   orientation = 3.6651914292, 2.0416535904, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_66.MARKER_414  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_66  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_66  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_67 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_67  &
   adams_id = 196  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_67
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_67.PSMAR  &
   adams_id = 885  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_67.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_67.cm  &
   adams_id = 886  &
   location = -889.8499773167, -70.2051132728, -39.4585078633  &
   orientation = 3.6651914292, 1.3435218896, 1.4822169533
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_67.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_67.MARKER_412  &
   adams_id = 412  &
   location = -889.8499773167, -70.2051132728, -39.4585078633  &
   orientation = 3.6651914292, 1.3435218896, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_67.MARKER_412  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_67  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_67  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_68 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_68  &
   adams_id = 197  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_68
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_68.PSMAR  &
   adams_id = 887  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_68.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_68.cm  &
   adams_id = 888  &
   location = -901.4642075575, -50.0886764049, -24.3611627987  &
   orientation = 3.6651914292, 0.6453901889, 2.5649270507
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_68.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_68.MARKER_410  &
   adams_id = 410  &
   location = -901.4642075575, -50.0886764049, -24.3611627987  &
   orientation = 3.6651914292, 0.6453901889, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_68.MARKER_410  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_68  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_68  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_69 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_69  &
   adams_id = 198  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_69
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_69.PSMAR  &
   adams_id = 889  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_69.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_69.cm  &
   adams_id = 890  &
   location = -905.5090309213, -43.0828368312, 2.1350410836  &
   orientation = 0.5235987756, 5.2741511947E-002, 0.2696235525
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_69.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_69.MARKER_408  &
   adams_id = 408  &
   location = -905.5090309213, -43.0828368312, 2.1350410836  &
   orientation = 0.5235987756, 5.2741511947E-002, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_69.MARKER_408  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_69  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_69  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_70 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_70  &
   adams_id = 199  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_70
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_70.PSMAR  &
   adams_id = 891  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_70.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_70.cm  &
   adams_id = 892  &
   location = -900.0918296028, -52.4657047496, 27.6322355146  &
   orientation = 3.6651914292, 2.3907194408, 2.1497993234
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_70.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_70.MARKER_406  &
   adams_id = 406  &
   location = -900.0918296028, -52.4657047496, 27.6322355146  &
   orientation = 0.5235987756, 0.7508732127, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_70.MARKER_406  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_70  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_70  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_71 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_71  &
   adams_id = 200  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_71
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_71.PSMAR  &
   adams_id = 893  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_71.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_71.cm  &
   adams_id = 894  &
   location = -887.7473723046, -73.846931982, 40.1999998502  &
   orientation = 0.5235987756, 1.4490049135, 0.1887100155
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_71.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_71.MARKER_404  &
   adams_id = 404  &
   location = -887.7473723046, -73.846931982, 40.1999998502  &
   orientation = 0.5235987756, 1.4490049135, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_71.MARKER_404  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_71  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_71  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_72 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_72  &
   adams_id = 201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_72
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_72.PSMAR  &
   adams_id = 895  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_72.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_72.cm  &
   adams_id = 896  &
   location = -874.2517677897, -97.2220046806, 33.9577374826  &
   orientation = 0.5235987756, 2.1471366143, 6.2023486205
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_72.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_72.MARKER_402  &
   adams_id = 402  &
   location = -874.2517677897, -97.2220046806, 33.9577374826  &
   orientation = 0.5235987756, 2.1471366143, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_72.MARKER_402  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_72  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_72  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!------------------------------- Part3_banhxe_4 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part3_banhxe_4  &
   adams_id = 202  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part3_banhxe_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.PSMAR  &
   adams_id = 897  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.cm  &
   adams_id = 898  &
   location = -855.2864129801, -60.8002102562, 4.8968039883E-002  &
   orientation = 0.5235985448, 1.7979607563, 6.2772684109
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_137  &
   adams_id = 137  &
   location = -849.4978014823, -55.0971320139, -8.7922470031  &
   orientation = 0.5235987756, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_137  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_209  &
   adams_id = 209  &
   location = -876.1939220327, -72.8580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_209  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_220  &
   adams_id = 220  &
   location = -842.4189312851, -53.3580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_220  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_448  &
   adams_id = 448  &
   location = -842.4189312851, -53.3580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_448  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_449  &
   adams_id = 449  &
   location = -842.4189312851, -53.3580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_449  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part3_banhxe_4  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part3_banhxe_4  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_10 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_10  &
   adams_id = 203  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_10.PSMAR  &
   adams_id = 899  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_10.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_10.cm  &
   adams_id = 900  &
   location = -878.4972350249, -100.4720248499, 6.949759763  &
   orientation = 0.5235987764, 1.8179376462, 6.283185307
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_10.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_10.MARKER_124  &
   adams_id = 124  &
   location = -878.4972350249, -100.4720248499, 6.949759763  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_10.MARKER_124  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_10  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_10  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_11 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_11  &
   adams_id = 204  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_11.PSMAR  &
   adams_id = 901  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_11.cm  &
   adams_id = 902  &
   location = -892.5599320574, -76.1147190982, -23.1879635887  &
   orientation = 0.5235987746, 0.7702489294, 7.6360009746E-010
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_11.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_11.MARKER_122  &
   adams_id = 122  &
   location = -892.5599320574, -76.1147190982, -23.1879635887  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_11.MARKER_122  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_11  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_11  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_12 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_12  &
   adams_id = 205  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_12.PSMAR  &
   adams_id = 903  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_12.cm  &
   adams_id = 904  &
   location = -898.5786005536, -65.6900794686, 16.2382038359  &
   orientation = 3.6651914233, 0.2773595141, 3.1415926595
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_12.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_12.MARKER_120  &
   adams_id = 120  &
   location = -898.5786005536, -65.6900794686, 16.2382038359  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_12.MARKER_120  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_12  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_12  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_10 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10  &
   adams_id = 206  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.PSMAR  &
   adams_id = 905  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.cm  &
   adams_id = 906  &
   location = -860.2259728947, -89.9231052853, 6.9497600469  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.MARKER_125  &
   adams_id = 125  &
   location = -878.4972350249, -100.4720248499, 6.949759763  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.MARKER_125  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.MARKER_172  &
   adams_id = 172  &
   location = -860.2259728947, -89.9231052853, 6.9497600469  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.MARKER_172  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_11 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11  &
   adams_id = 207  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.PSMAR  &
   adams_id = 907  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.cm  &
   adams_id = 908  &
   location = -874.288668857, -65.5658013873, -23.1879626456  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.MARKER_123  &
   adams_id = 123  &
   location = -892.5599320574, -76.1147190982, -23.1879635887  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.MARKER_123  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.MARKER_170  &
   adams_id = 170  &
   location = -874.288668857, -65.5658013873, -23.1879626456  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.MARKER_170  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_12 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12  &
   adams_id = 208  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.PSMAR  &
   adams_id = 909  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.cm  &
   adams_id = 910  &
   location = -880.3073376078, -55.1411613169, 16.2382025987  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.MARKER_121  &
   adams_id = 121  &
   location = -898.5786005536, -65.6900794686, 16.2382038359  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.MARKER_121  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.MARKER_168  &
   adams_id = 168  &
   location = -880.3073376078, -55.1411613169, 16.2382025987  &
   orientation = 5.235987756, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.MARKER_168  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------ socket_head_cap_screw_iso_4 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_4  &
   adams_id = 209  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_4.PSMAR  &
   adams_id = 911  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_4.cm  &
   adams_id = 912  &
   location = -849.4978014823, -55.0971320139, -8.7922470031  &
   orientation = 3.6651914292, 2.9143182164, 1.7656420993
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_4.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_4.MARKER_136  &
   adams_id = 136  &
   location = -849.4978014823, -55.0971320139, -8.7922470031  &
   orientation = 0.5235987756, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_4.MARKER_136  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_4  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_4  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------- omniwheel_1_5 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_1_5  &
   adams_id = 210  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_1_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.PSMAR  &
   adams_id = 913  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.cm  &
   adams_id = 914  &
   location = -632.7271110529, -67.7075423585, 6.1575156487E-007  &
   orientation = 5.7595865921, 2.0603448129, 3.1798608903E-008
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_163  &
   adams_id = 163  &
   location = -637.0926847015, -85.2788840094, 16.2382025987  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_163  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_165  &
   adams_id = 165  &
   location = -631.0740159506, -74.854243939, -23.1879626456  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_165  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_167  &
   adams_id = 167  &
   location = -617.0113199884, -50.496940041, 6.9497600469  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_167  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_200  &
   adams_id = 200  &
   location = -623.8060779673, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_200  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_385  &
   adams_id = 385  &
   location = -616.7223259219, -39.5886764049, 24.3611627987  &
   orientation = 5.7595865316, 0.6453901889, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_385  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_387  &
   adams_id = 387  &
   location = -612.6775025582, -32.5828368312, -2.1350410836  &
   orientation = 2.617993878, 5.2741511947E-002, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_387  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_389  &
   adams_id = 389  &
   location = -618.0947038767, -41.9657047496, -27.6322355146  &
   orientation = 2.617993878, 0.7508732127, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_389  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_391  &
   adams_id = 391  &
   location = -630.4391611749, -63.346931982, -40.1999998502  &
   orientation = 2.617993878, 1.4490049135, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_391  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_393  &
   adams_id = 393  &
   location = -643.9347656897, -86.7220046806, -33.9577374826  &
   orientation = 2.617993878, 2.1471366143, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_393  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_395  &
   adams_id = 395  &
   location = -652.2667740817, -101.1534665446, -11.8262723488  &
   orientation = 2.617993878, 2.8452683151, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_395  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_397  &
   adams_id = 397  &
   location = -651.5365470243, -99.8886761801, 15.8388370515  &
   orientation = 5.7595865316, 2.7397852912, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_397  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_399  &
   adams_id = 399  &
   location = -642.0857658732, -83.5194430552, 36.0927785662  &
   orientation = 5.7595865316, 2.0416535904, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_399  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_401  &
   adams_id = 401  &
   location = -628.3365561628, -59.7051132728, 39.4585078633  &
   orientation = 5.7595865316, 1.3435218897, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_401  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_1_5  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_1_5  &
   color = COLOR_R096G096B096  &
   visibility = on
!
!------------------------------- omniwheel_2_5 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_2_5  &
   adams_id = 211  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_2_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.PSMAR  &
   adams_id = 915  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.cm  &
   adams_id = 916  &
   location = -614.8850478437, -78.0086525158, -2.836767564E-006  &
   orientation = 5.7595864791, 2.3517487332, 6.2831852908
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_198  &
   adams_id = 198  &
   location = -623.8060779673, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_198  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_367  &
   adams_id = 367  &
   location = -603.6773902449, -58.9941850307, 33.9577374826  &
   orientation = 5.7595865316, 0.9944560393, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_367  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_369  &
   adams_id = 369  &
   location = -617.1729947597, -82.3692577293, 40.1999998502  &
   orientation = 5.7595865316, 1.69258774, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_369  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_371  &
   adams_id = 371  &
   location = -629.517452058, -103.7504849617, 27.6322355146  &
   orientation = 5.7595865316, 2.3907194408, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_371  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_373  &
   adams_id = 373  &
   location = -634.9346533764, -113.1333528801, 2.1350410836  &
   orientation = 5.7595865316, 3.0888511416, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_373  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_375  &
   adams_id = 375  &
   location = -630.8898300127, -106.1275133065, -24.3611627987  &
   orientation = 2.617993878, 2.4962024647, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_375  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_377  &
   adams_id = 377  &
   location = -619.2755997719, -86.0110764386, -39.4585078633  &
   orientation = 2.617993878, 1.7980707639, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_377  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_379  &
   adams_id = 379  &
   location = -605.5263900614, -62.1967466562, -36.0927785662  &
   orientation = 2.617993878, 1.0999390631, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_379  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_381  &
   adams_id = 381  &
   location = -596.0756089103, -45.8275135312, -15.8388370515  &
   orientation = 2.617993878, 0.4018073623, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_381  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_383  &
   adams_id = 383  &
   location = -595.3453818529, -44.5627231667, 11.8262723488  &
   orientation = 5.7595865316, 0.2963243385, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_383  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_2_5  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_2_5  &
   color = COLOR_R089G086B086  &
   visibility = on
!
!------------------------------- Part1_banhxe_5 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part1_banhxe_5  &
   adams_id = 212  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part1_banhxe_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.PSMAR  &
   adams_id = 917  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.cm  &
   adams_id = 918  &
   location = -623.8060779673, -72.8580948557, 0.0  &
   orientation = 5.7595865316, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_199  &
   adams_id = 199  &
   location = -623.8060779673, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_199  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_201  &
   adams_id = 201  &
   location = -623.8060779673, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_201  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_202  &
   adams_id = 202  &
   location = -623.8060779673, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_202  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part1_banhxe_5  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part1_banhxe_5  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------------- roller_73 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_73  &
   adams_id = 213  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_73
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_73.PSMAR  &
   adams_id = 919  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_73.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_73.cm  &
   adams_id = 920  &
   location = -628.3365561628, -59.7051132728, 39.4585078633  &
   orientation = 2.617993878, 1.7980707639, 1.5605025587
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_73.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_73.MARKER_400  &
   adams_id = 400  &
   location = -628.3365561628, -59.7051132728, 39.4585078633  &
   orientation = 5.7595865316, 1.3435218897, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_73.MARKER_400  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_73  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_73  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_74 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_74  &
   adams_id = 214  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_74
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_74.PSMAR  &
   adams_id = 921  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_74.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_74.cm  &
   adams_id = 922  &
   location = -642.0857658732, -83.5194430552, 36.0927785662  &
   orientation = 5.7595865316, 2.0416535904, 0.4831509917
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_74.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_74.MARKER_398  &
   adams_id = 398  &
   location = -642.0857658732, -83.5194430552, 36.0927785662  &
   orientation = 5.7595865316, 2.0416535904, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_74.MARKER_398  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_74  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_74  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_75 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_75  &
   adams_id = 215  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_75
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_75.PSMAR  &
   adams_id = 923  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_75.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_75.cm  &
   adams_id = 924  &
   location = -651.5365470243, -99.8886761801, 15.8388370515  &
   orientation = 2.617993878, 0.4018073623, 2.932121269
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_75.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_75.MARKER_396  &
   adams_id = 396  &
   location = -651.5365470243, -99.8886761801, 15.8388370515  &
   orientation = 5.7595865316, 2.7397852912, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_75.MARKER_396  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_75  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_75  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_76 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_76  &
   adams_id = 216  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_76
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_76.PSMAR  &
   adams_id = 925  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_76.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_76.cm  &
   adams_id = 926  &
   location = -652.2667740817, -101.1534665446, -11.8262723488  &
   orientation = 5.7595865316, 0.2963243385, 0.1708771404
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_76.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_76.MARKER_394  &
   adams_id = 394  &
   location = -652.2667740817, -101.1534665446, -11.8262723488  &
   orientation = 2.617993878, 2.8452683151, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_76.MARKER_394  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_76  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_76  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_77 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_77  &
   adams_id = 217  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_77
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_77.PSMAR  &
   adams_id = 927  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_77.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_77.cm  &
   adams_id = 928  &
   location = -643.9347656897, -86.7220046806, -33.9577374826  &
   orientation = 2.617993878, 2.1471366143, 1.881667212
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_77.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_77.MARKER_392  &
   adams_id = 392  &
   location = -643.9347656897, -86.7220046806, -33.9577374826  &
   orientation = 2.617993878, 2.1471366143, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_77.MARKER_392  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_77  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_77  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_78 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_78  &
   adams_id = 218  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_78
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_78.PSMAR  &
   adams_id = 929  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_78.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_78.cm  &
   adams_id = 930  &
   location = -630.4391611749, -63.346931982, -40.1999998502  &
   orientation = 5.7595865316, 1.69258774, 5.7223274712
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_78.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_78.MARKER_390  &
   adams_id = 390  &
   location = -630.4391611749, -63.346931982, -40.1999998502  &
   orientation = 2.617993878, 1.4490049135, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_78.MARKER_390  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_78  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_78  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_79 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_79  &
   adams_id = 219  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_79
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_79.PSMAR  &
   adams_id = 931  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_79.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_79.cm  &
   adams_id = 932  &
   location = -618.0947038767, -41.9657047496, -27.6322355146  &
   orientation = 2.617993878, 0.7508732127, 3.369321531
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_79.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_79.MARKER_388  &
   adams_id = 388  &
   location = -618.0947038767, -41.9657047496, -27.6322355146  &
   orientation = 2.617993878, 0.7508732127, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_79.MARKER_388  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_79  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_79  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_80 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_80  &
   adams_id = 220  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_80
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_80.PSMAR  &
   adams_id = 933  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_80.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_80.cm  &
   adams_id = 934  &
   location = -612.6775025582, -32.5828368312, -2.1350410836  &
   orientation = 5.7595865316, 3.0888511416, 4.2880855489
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_80.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_80.MARKER_386  &
   adams_id = 386  &
   location = -612.6775025582, -32.5828368312, -2.1350410836  &
   orientation = 2.617993878, 5.2741511947E-002, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_80.MARKER_386  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_80  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_80  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_81 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_81  &
   adams_id = 221  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_81
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_81.PSMAR  &
   adams_id = 935  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_81.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_81.cm  &
   adams_id = 936  &
   location = -616.7223259219, -39.5886764049, 24.3611627987  &
   orientation = 5.7595865316, 0.6453901889, 6.1952566532
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_81.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_81.MARKER_384  &
   adams_id = 384  &
   location = -616.7223259219, -39.5886764049, 24.3611627987  &
   orientation = 5.7595865316, 0.6453901889, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_81.MARKER_384  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_81  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_81  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_82 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_82  &
   adams_id = 222  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_82
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_82.PSMAR  &
   adams_id = 937  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_82.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_82.cm  &
   adams_id = 938  &
   location = -595.3453818529, -44.5627231667, 11.8262723488  &
   orientation = 2.617993878, 2.8452683151, 1.2476766077
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_82.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_82.MARKER_382  &
   adams_id = 382  &
   location = -595.3453818529, -44.5627231667, 11.8262723488  &
   orientation = 5.7595865316, 0.2963243385, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_82.MARKER_382  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_82  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_82  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_83 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_83  &
   adams_id = 223  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_83
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_83.PSMAR  &
   adams_id = 939  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_83.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_83.cm  &
   adams_id = 940  &
   location = -596.0756089103, -45.8275135312, -15.8388370515  &
   orientation = 5.7595865316, 2.7397852912, 4.3833620948
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_83.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_83.MARKER_380  &
   adams_id = 380  &
   location = -596.0756089103, -45.8275135312, -15.8388370515  &
   orientation = 2.617993878, 0.4018073623, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_83.MARKER_380  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_83  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_83  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_84 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_84  &
   adams_id = 224  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_84
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_84.PSMAR  &
   adams_id = 941  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_84.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_84.cm  &
   adams_id = 942  &
   location = -605.5263900614, -62.1967466562, -36.0927785662  &
   orientation = 2.617993878, 1.0999390631, 2.142134428
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_84.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_84.MARKER_378  &
   adams_id = 378  &
   location = -605.5263900614, -62.1967466562, -36.0927785662  &
   orientation = 2.617993878, 1.0999390631, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_84.MARKER_378  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_84  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_84  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_85 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_85  &
   adams_id = 225  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_85
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_85.PSMAR  &
   adams_id = 943  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_85.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_85.cm  &
   adams_id = 944  &
   location = -619.2755997719, -86.0110764386, -39.4585078633  &
   orientation = 5.7595865316, 1.3435218896, 6.2709806678
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_85.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_85.MARKER_376  &
   adams_id = 376  &
   location = -619.2755997719, -86.0110764386, -39.4585078633  &
   orientation = 2.617993878, 1.7980707639, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_85.MARKER_376  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_85  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_85  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_86 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_86  &
   adams_id = 226  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_86
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_86.PSMAR  &
   adams_id = 945  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_86.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_86.cm  &
   adams_id = 946  &
   location = -630.8898300127, -106.1275133065, -24.3611627987  &
   orientation = 5.7595865316, 0.6453901888, 5.5502397176
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_86.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_86.MARKER_374  &
   adams_id = 374  &
   location = -630.8898300127, -106.1275133065, -24.3611627987  &
   orientation = 2.617993878, 2.4962024647, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_86.MARKER_374  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_86  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_86  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_87 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_87  &
   adams_id = 227  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_87
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_87.PSMAR  &
   adams_id = 947  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_87.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_87.cm  &
   adams_id = 948  &
   location = -634.9346533764, -113.1333528801, 2.1350410836  &
   orientation = 5.7595865316, 3.0888511416, 4.5612488217
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_87.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_87.MARKER_372  &
   adams_id = 372  &
   location = -634.9346533764, -113.1333528801, 2.1350410836  &
   orientation = 5.7595865316, 3.0888511416, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_87.MARKER_372  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_87  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_87  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_88 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_88  &
   adams_id = 228  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_88
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_88.PSMAR  &
   adams_id = 949  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_88.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_88.cm  &
   adams_id = 950  &
   location = -629.517452058, -103.7504849617, 27.6322355146  &
   orientation = 2.617993878, 0.7508732128, 3.8965252195
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_88.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_88.MARKER_370  &
   adams_id = 370  &
   location = -629.517452058, -103.7504849617, 27.6322355146  &
   orientation = 5.7595865316, 2.3907194408, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_88.MARKER_370  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_88  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_88  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_89 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_89  &
   adams_id = 229  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_89
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_89.PSMAR  &
   adams_id = 951  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_89.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_89.cm  &
   adams_id = 952  &
   location = -617.1729947597, -82.3692577293, 40.1999998502  &
   orientation = 2.617993878, 1.4490049135, 1.5161048017
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_89.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_89.MARKER_368  &
   adams_id = 368  &
   location = -617.1729947597, -82.3692577293, 40.1999998502  &
   orientation = 5.7595865316, 1.69258774, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_89.MARKER_368  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_89  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_89  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_90 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_90  &
   adams_id = 230  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_90
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_90.PSMAR  &
   adams_id = 953  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_90.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_90.cm  &
   adams_id = 954  &
   location = -603.6773902449, -58.9941850307, 33.9577374826  &
   orientation = 2.617993878, 2.1471366143, 1.5389193551
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_90.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_90.MARKER_366  &
   adams_id = 366  &
   location = -603.6773902449, -58.9941850307, 33.9577374826  &
   orientation = 5.7595865316, 0.9944560393, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_90.MARKER_366  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_90  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_90  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!------------------------------- Part3_banhxe_5 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part3_banhxe_5  &
   adams_id = 231  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part3_banhxe_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.PSMAR  &
   adams_id = 955  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.cm  &
   adams_id = 956  &
   location = -644.7022634479, -60.7806071845, 4.8973189957E-002  &
   orientation = 5.759586583, 1.3436320617, 5.9173859604E-003
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_135  &
   adams_id = 135  &
   location = -652.5355832591, -58.6190576974, -8.7922470031  &
   orientation = 2.617993878, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_135  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_203  &
   adams_id = 203  &
   location = -623.8060779673, -72.8580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_203  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_218  &
   adams_id = 218  &
   location = -657.5810687149, -53.3580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_218  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_446  &
   adams_id = 446  &
   location = -657.5810687149, -53.3580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_446  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_447  &
   adams_id = 447  &
   location = -657.5810687149, -53.3580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_447  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part3_banhxe_5  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part3_banhxe_5  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_13 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_13  &
   adams_id = 232  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_13.PSMAR  &
   adams_id = 957  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_13.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_13.cm  &
   adams_id = 958  &
   location = -598.7400565978, -61.0458574227, 6.949759763  &
   orientation = 5.7595865324, 1.3236550174, 1.4576462915E-010
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_13.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_13.MARKER_118  &
   adams_id = 118  &
   location = -598.7400565978, -61.0458574227, 6.949759763  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_13.MARKER_118  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_13  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_13  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_14 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_14  &
   adams_id = 233  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_14
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_14.PSMAR  &
   adams_id = 959  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_14.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_14.cm  &
   adams_id = 960  &
   location = -612.8027536303, -85.4031631744, -23.1879635887  &
   orientation = 2.617993877, 0.7702491897, 3.1415926544
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_14.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_14.MARKER_116  &
   adams_id = 116  &
   location = -612.8027536303, -85.4031631744, -23.1879635887  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_14.MARKER_116  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_14  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_14  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_15 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_15  &
   adams_id = 234  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_15
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_15.PSMAR  &
   adams_id = 961  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_15.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_15.cm  &
   adams_id = 962  &
   location = -618.8214221265, -95.827802804, 16.2382038359  &
   orientation = 5.7595865318, 0.277348285, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_15.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_15.MARKER_114  &
   adams_id = 114  &
   location = -618.8214221265, -95.827802804, 16.2382038359  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_15.MARKER_114  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_15  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_15  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_13 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13  &
   adams_id = 235  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.PSMAR  &
   adams_id = 963  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.cm  &
   adams_id = 964  &
   location = -617.0113199884, -50.496940041, 6.9497600469  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.MARKER_119  &
   adams_id = 119  &
   location = -598.7400565978, -61.0458574227, 6.949759763  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.MARKER_119  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.MARKER_166  &
   adams_id = 166  &
   location = -617.0113199884, -50.496940041, 6.9497600469  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.MARKER_166  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_14 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14  &
   adams_id = 236  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_14
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.PSMAR  &
   adams_id = 965  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.cm  &
   adams_id = 966  &
   location = -631.0740159506, -74.854243939, -23.1879626456  &
   orientation = 4.1887902048, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.MARKER_117  &
   adams_id = 117  &
   location = -612.8027536303, -85.4031631744, -23.1879635887  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.MARKER_117  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.MARKER_164  &
   adams_id = 164  &
   location = -631.0740159506, -74.854243939, -23.1879626456  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.MARKER_164  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_15 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15  &
   adams_id = 237  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_15
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.PSMAR  &
   adams_id = 967  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.cm  &
   adams_id = 968  &
   location = -637.0926847015, -85.2788840094, 16.2382025987  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.MARKER_115  &
   adams_id = 115  &
   location = -618.8214221265, -95.827802804, 16.2382038359  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.MARKER_115  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.MARKER_162  &
   adams_id = 162  &
   location = -637.0926847015, -85.2788840094, 16.2382025987  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.MARKER_162  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------ socket_head_cap_screw_iso_5 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_5  &
   adams_id = 238  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_5.PSMAR  &
   adams_id = 969  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_5.cm  &
   adams_id = 970  &
   location = -652.5355832591, -58.6190576974, -8.7922470031  &
   orientation = 5.7595865316, 2.9143182164, 4.2165344317
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_5.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_5.MARKER_134  &
   adams_id = 134  &
   location = -652.5355832591, -58.6190576974, -8.7922470031  &
   orientation = 2.617993878, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_5.MARKER_134  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_5  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_5  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------- omniwheel_1_6 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_1_6  &
   adams_id = 239  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_1_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.PSMAR  &
   adams_id = 971  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.cm  &
   adams_id = 972  &
   location = -749.9999913774, 135.4150715523, 1.2249986197E-006  &
   orientation = 1.5707963732, 1.207466643, 2.0048505283E-008
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_157  &
   adams_id = 157  &
   location = -732.5999776907, 140.4200453263, 16.2382025987  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_157  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_159  &
   adams_id = 159  &
   location = -744.6373151924, 140.4200453263, -23.1879626456  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_159  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_161  &
   adams_id = 161  &
   location = -772.7627071169, 140.4200453263, 6.9497600469  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_161  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_194  &
   adams_id = 194  &
   location = -750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_194  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_349  &
   adams_id = 349  &
   location = -782.3540375702, 135.2161897113, 24.3611627987  &
   orientation = 4.7123889804, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_349  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_351  &
   adams_id = 351  &
   location = -790.4436842977, 135.2161897113, -2.1350410836  &
   orientation = 1.5707963268, 3.0888511416, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_351  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_353  &
   adams_id = 353  &
   location = -779.6092816608, 135.2161897113, -27.6322355146  &
   orientation = 1.5707963268, 2.3907194408, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_353  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_355  &
   adams_id = 355  &
   location = -754.9203670643, 135.2161897113, -40.1999998502  &
   orientation = 1.5707963268, 1.69258774, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_355  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_357  &
   adams_id = 357  &
   location = -727.9291580346, 135.2161897113, -33.9577374826  &
   orientation = 1.5707963268, 0.9944560392, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_357  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_359  &
   adams_id = 359  &
   location = -711.2651412506, 135.2161897113, -11.8262723488  &
   orientation = 1.5707963268, 0.2963243384, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_359  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_361  &
   adams_id = 361  &
   location = -712.7255953655, 135.2161897113, 15.8388370515  &
   orientation = 4.7123889804, 0.4018073623, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_361  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_363  &
   adams_id = 363  &
   location = -731.6271576677, 135.2161897113, 36.0927785662  &
   orientation = 4.7123889804, 1.0999390631, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_363  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_365  &
   adams_id = 365  &
   location = -759.1255770886, 135.2161897113, 39.4585078633  &
   orientation = 4.7123889804, 1.7980707639, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_365  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_1_6  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_1_6  &
   color = COLOR_R096G096B096  &
   visibility = on
!
!------------------------------- omniwheel_2_6 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.omniwheel_2_6  &
   adams_id = 240  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.omniwheel_2_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.PSMAR  &
   adams_id = 973  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.cm  &
   adams_id = 974  &
   location = -750.0000050425, 156.0173068382, -4.14577207E-006  &
   orientation = 1.5707962532, 2.703271013, 6.2831852477
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_192  &
   adams_id = 192  &
   location = -750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_192  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_331  &
   adams_id = 331  &
   location = -772.0708419654, 156.2161897113, 33.9577374826  &
   orientation = 4.7123889804, 2.1471366143, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_331  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_333  &
   adams_id = 333  &
   location = -745.0796329357, 156.2161897113, 40.1999998502  &
   orientation = 4.7123889804, 1.4490049135, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_333  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_335  &
   adams_id = 335  &
   location = -720.3907183392, 156.2161897113, 27.6322355146  &
   orientation = 4.7123889804, 0.7508732127, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_335  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_337  &
   adams_id = 337  &
   location = -709.5563157023, 156.2161897113, 2.1350410836  &
   orientation = 4.7123889804, 5.2741511947E-002, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_337  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_339  &
   adams_id = 339  &
   location = -717.6459624298, 156.2161897113, -24.3611627987  &
   orientation = 1.5707963268, 0.6453901888, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_339  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_341  &
   adams_id = 341  &
   location = -740.8744229114, 156.2161897113, -39.4585078633  &
   orientation = 1.5707963268, 1.3435218896, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_341  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_343  &
   adams_id = 343  &
   location = -768.3728423323, 156.2161897113, -36.0927785662  &
   orientation = 1.5707963268, 2.0416535904, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_343  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_345  &
   adams_id = 345  &
   location = -787.2744046345, 156.2161897113, -15.8388370515  &
   orientation = 1.5707963268, 2.7397852913, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_345  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_347  &
   adams_id = 347  &
   location = -788.7348587494, 156.2161897113, 11.8262723488  &
   orientation = 4.7123889804, 2.8452683151, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_347  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.omniwheel_2_6  &
   material_type = .Robot_Formation_1.nylon
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.omniwheel_2_6  &
   color = COLOR_R089G086B086  &
   visibility = on
!
!------------------------------- Part1_banhxe_6 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part1_banhxe_6  &
   adams_id = 241  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part1_banhxe_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.PSMAR  &
   adams_id = 975  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.cm  &
   adams_id = 976  &
   location = -750.0, 145.7161897113, 0.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_193  &
   adams_id = 193  &
   location = -750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_193  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_195  &
   adams_id = 195  &
   location = -750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_195  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_196  &
   adams_id = 196  &
   location = -750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_196  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part1_banhxe_6  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part1_banhxe_6  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------------- roller_91 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_91  &
   adams_id = 242  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_91
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_91.PSMAR  &
   adams_id = 977  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_91.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_91.cm  &
   adams_id = 978  &
   location = -759.1255770886, 135.2161897113, 39.4585078633  &
   orientation = 4.7123889804, 1.7980707639, 1.5429881922
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_91.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_91.MARKER_364  &
   adams_id = 364  &
   location = -759.1255770886, 135.2161897113, 39.4585078633  &
   orientation = 4.7123889804, 1.7980707639, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_91.MARKER_364  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_91  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_91  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_92 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_92  &
   adams_id = 243  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_92
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_92.PSMAR  &
   adams_id = 979  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_92.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_92.cm  &
   adams_id = 980  &
   location = -731.6271576677, 135.2161897113, 36.0927785662  &
   orientation = 4.7123889804, 1.0999390631, 1.3113421055
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_92.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_92.MARKER_362  &
   adams_id = 362  &
   location = -731.6271576677, 135.2161897113, 36.0927785662  &
   orientation = 4.7123889804, 1.0999390631, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_92.MARKER_362  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_92  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_92  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_93 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_93  &
   adams_id = 244  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_93
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_93.PSMAR  &
   adams_id = 981  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_93.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_93.cm  &
   adams_id = 982  &
   location = -712.7255953655, 135.2161897113, 15.8388370515  &
   orientation = 4.7123889804, 0.4018073623, 1.2088363252
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_93.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_93.MARKER_360  &
   adams_id = 360  &
   location = -712.7255953655, 135.2161897113, 15.8388370515  &
   orientation = 4.7123889804, 0.4018073623, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_93.MARKER_360  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_93  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_93  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_94 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_94  &
   adams_id = 245  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_94
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_94.PSMAR  &
   adams_id = 983  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_94.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_94.cm  &
   adams_id = 984  &
   location = -711.2651412506, 135.2161897113, -11.8262723488  &
   orientation = 1.5707963268, 0.2963243384, 4.7123889804
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_94.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_94.MARKER_358  &
   adams_id = 358  &
   location = -711.2651412506, 135.2161897113, -11.8262723488  &
   orientation = 1.5707963268, 0.2963243384, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_94.MARKER_358  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_94  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_94  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_95 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_95  &
   adams_id = 246  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_95
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_95.PSMAR  &
   adams_id = 985  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_95.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_95.cm  &
   adams_id = 986  &
   location = -727.9291580346, 135.2161897113, -33.9577374826  &
   orientation = 4.7123889804, 2.1471366143, 1.5459444187
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_95.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_95.MARKER_356  &
   adams_id = 356  &
   location = -727.9291580346, 135.2161897113, -33.9577374826  &
   orientation = 1.5707963268, 0.9944560392, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_95.MARKER_356  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_95  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_95  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_96 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_96  &
   adams_id = 247  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_96
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_96.PSMAR  &
   adams_id = 987  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_96.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_96.cm  &
   adams_id = 988  &
   location = -754.9203670643, 135.2161897113, -40.1999998502  &
   orientation = 4.7123889804, 1.4490049135, 1.5531364911
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_96.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_96.MARKER_354  &
   adams_id = 354  &
   location = -754.9203670643, 135.2161897113, -40.1999998502  &
   orientation = 1.5707963268, 1.69258774, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_96.MARKER_354  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_96  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_96  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_97 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_97  &
   adams_id = 248  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_97
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_97.PSMAR  &
   adams_id = 989  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_97.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_97.cm  &
   adams_id = 990  &
   location = -779.6092816608, 135.2161897113, -27.6322355146  &
   orientation = 4.7123889804, 0.7508732127, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_97.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_97.MARKER_352  &
   adams_id = 352  &
   location = -779.6092816608, 135.2161897113, -27.6322355146  &
   orientation = 1.5707963268, 2.3907194408, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_97.MARKER_352  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_97  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_97  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_98 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_98  &
   adams_id = 249  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_98
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_98.PSMAR  &
   adams_id = 991  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_98.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_98.cm  &
   adams_id = 992  &
   location = -790.4436842977, 135.2161897113, -2.1350410836  &
   orientation = 4.7123889804, 5.2741511946E-002, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_98.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_98.MARKER_350  &
   adams_id = 350  &
   location = -790.4436842977, 135.2161897113, -2.1350410836  &
   orientation = 1.5707963268, 3.0888511416, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_98.MARKER_350  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_98  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_98  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_99 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_99  &
   adams_id = 250  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_99
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_99.PSMAR  &
   adams_id = 993  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_99.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_99.cm  &
   adams_id = 994  &
   location = -782.3540375702, 135.2161897113, 24.3611627987  &
   orientation = 4.7123889804, 2.4962024647, 3.2839304749
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_99.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_99.MARKER_348  &
   adams_id = 348  &
   location = -782.3540375702, 135.2161897113, 24.3611627987  &
   orientation = 4.7123889804, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_99.MARKER_348  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_99  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_99  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_100 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_100  &
   adams_id = 251  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_100
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_100.PSMAR  &
   adams_id = 995  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_100.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_100.cm  &
   adams_id = 996  &
   location = -788.7348587494, 156.2161897113, 11.8262723488  &
   orientation = 1.5707963268, 0.2963243385, 4.7123889804
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_100.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_100.MARKER_346  &
   adams_id = 346  &
   location = -788.7348587494, 156.2161897113, 11.8262723488  &
   orientation = 4.7123889804, 2.8452683151, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_100.MARKER_346  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_100  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_100  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_101 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_101  &
   adams_id = 252  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_101
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_101.PSMAR  &
   adams_id = 997  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_101.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_101.cm  &
   adams_id = 998  &
   location = -787.2744046345, 156.2161897113, -15.8388370515  &
   orientation = 4.7123889804, 0.4018073623, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_101.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_101.MARKER_344  &
   adams_id = 344  &
   location = -787.2744046345, 156.2161897113, -15.8388370515  &
   orientation = 1.5707963268, 2.7397852913, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_101.MARKER_344  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_101  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_101  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_102 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_102  &
   adams_id = 253  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_102
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_102.PSMAR  &
   adams_id = 999  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_102.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_102.cm  &
   adams_id = 1000  &
   location = -768.3728423323, 156.2161897113, -36.0927785662  &
   orientation = 4.7123889804, 1.0999390631, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_102.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_102.MARKER_342  &
   adams_id = 342  &
   location = -768.3728423323, 156.2161897113, -36.0927785662  &
   orientation = 1.5707963268, 2.0416535904, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_102.MARKER_342  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_102  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_102  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_103 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_103  &
   adams_id = 254  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_103
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_103.PSMAR  &
   adams_id = 1001  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_103.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_103.cm  &
   adams_id = 1002  &
   location = -740.8744229114, 156.2161897113, -39.4585078633  &
   orientation = 4.7123889804, 1.7980707639, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_103.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_103.MARKER_340  &
   adams_id = 340  &
   location = -740.8744229114, 156.2161897113, -39.4585078633  &
   orientation = 1.5707963268, 1.3435218896, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_103.MARKER_340  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_103  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_103  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_104 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_104  &
   adams_id = 255  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_104
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_104.PSMAR  &
   adams_id = 1003  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_104.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_104.cm  &
   adams_id = 1004  &
   location = -717.6459624298, 156.2161897113, -24.3611627987  &
   orientation = 4.7123889804, 2.4962024647, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_104.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_104.MARKER_338  &
   adams_id = 338  &
   location = -717.6459624298, 156.2161897113, -24.3611627987  &
   orientation = 1.5707963268, 0.6453901888, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_104.MARKER_338  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_104  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_104  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_105 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_105  &
   adams_id = 256  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_105
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_105.PSMAR  &
   adams_id = 1005  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_105.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_105.cm  &
   adams_id = 1006  &
   location = -709.5563157023, 156.2161897113, 2.1350410836  &
   orientation = 4.7123889804, 5.2741511947E-002, 0.9867380577
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_105.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_105.MARKER_336  &
   adams_id = 336  &
   location = -709.5563157023, 156.2161897113, 2.1350410836  &
   orientation = 4.7123889804, 5.2741511947E-002, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_105.MARKER_336  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_105  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_105  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_106 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_106  &
   adams_id = 257  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_106
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_106.PSMAR  &
   adams_id = 1007  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_106.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_106.cm  &
   adams_id = 1008  &
   location = -720.3907183392, 156.2161897113, 27.6322355146  &
   orientation = 4.7123889804, 0.7508732127, 2.3084344738
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_106.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_106.MARKER_334  &
   adams_id = 334  &
   location = -720.3907183392, 156.2161897113, 27.6322355146  &
   orientation = 4.7123889804, 0.7508732127, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_106.MARKER_334  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_106  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_106  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_107 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_107  &
   adams_id = 258  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_107
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_107.PSMAR  &
   adams_id = 1009  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_107.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_107.cm  &
   adams_id = 1010  &
   location = -745.0796329357, 156.2161897113, 40.1999998502  &
   orientation = 4.7123889804, 1.4490049135, 1.5768216403
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_107.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_107.MARKER_332  &
   adams_id = 332  &
   location = -745.0796329357, 156.2161897113, 40.1999998502  &
   orientation = 4.7123889804, 1.4490049135, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_107.MARKER_332  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_107  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_107  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!--------------------------------- roller_108 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.roller_108  &
   adams_id = 259  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.roller_108
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.roller_108.PSMAR  &
   adams_id = 1011  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_108.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_108.cm  &
   adams_id = 1012  &
   location = -772.0708419654, 156.2161897113, 33.9577374826  &
   orientation = 4.7123889804, 2.1471366143, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_108.cm  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.roller_108.MARKER_330  &
   adams_id = 330  &
   location = -772.0708419654, 156.2161897113, 33.9577374826  &
   orientation = 4.7123889804, 2.1471366143, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.roller_108.MARKER_330  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.roller_108  &
   material_type = .Robot_Formation_1.rubber
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.roller_108  &
   color = COLOR_R048G048B048  &
   visibility = on
!
!------------------------------- Part3_banhxe_6 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Part3_banhxe_6  &
   adams_id = 260  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Part3_banhxe_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.PSMAR  &
   adams_id = 1013  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.cm  &
   adams_id = 1014  &
   location = -750.0113199725, 121.5808040261, 4.8958208775E-002  &
   orientation = 1.5707962246, 1.3435664548, 5.9157713779E-003
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_133  &
   adams_id = 133  &
   location = -747.9666152586, 113.7161897113, -8.7922470031  &
   orientation = 4.7123889804, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_133  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_197  &
   adams_id = 197  &
   location = -750.0, 145.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_197  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_216  &
   adams_id = 216  &
   location = -750.0, 106.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_216  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_444  &
   adams_id = 444  &
   location = -750.0, 106.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_444  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_445  &
   adams_id = 445  &
   location = -750.0, 106.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_445  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Part3_banhxe_6  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Part3_banhxe_6  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_16 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_16  &
   adams_id = 261  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_16
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_16.PSMAR  &
   adams_id = 1015  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_16.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_16.cm  &
   adams_id = 1016  &
   location = -772.7627083772, 161.5178822726, 6.949759763  &
   orientation = 1.5707963276, 1.3236551948, 1.4586307762E-010
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_16.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_16.MARKER_112  &
   adams_id = 112  &
   location = -772.7627083772, 161.5178822726, 6.949759763  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_16.MARKER_112  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_16  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_16  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_17 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_17  &
   adams_id = 262  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_17
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_17.PSMAR  &
   adams_id = 1017  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_17.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_17.cm  &
   adams_id = 1018  &
   location = -744.6373143122, 161.5178822726, -23.1879635887  &
   orientation = 1.5707963258, 2.3713427831, 6.2831853064
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_17.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_17.MARKER_110  &
   adams_id = 110  &
   location = -744.6373143122, 161.5178822726, -23.1879635887  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_17.MARKER_110  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_17  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_17  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!--------------------------- hex_nut_gradec_iso_18 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_18  &
   adams_id = 263  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.hex_nut_gradec_iso_18
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_18.PSMAR  &
   adams_id = 1019  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_18.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_18.cm  &
   adams_id = 1020  &
   location = -732.5999773614, 161.5178822726, 16.238203861  &
   orientation = 4.7123889763, 2.8612110952, 3.1415926473
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_18.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_18.MARKER_108  &
   adams_id = 108  &
   location = -732.5999773614, 161.5178822726, 16.238203861  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.hex_nut_gradec_iso_18.MARKER_108  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_18  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.hex_nut_gradec_iso_18  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_16 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16  &
   adams_id = 264  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_16
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.PSMAR  &
   adams_id = 1021  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.cm  &
   adams_id = 1022  &
   location = -772.7627071169, 140.4200453263, 6.9497600469  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.MARKER_113  &
   adams_id = 113  &
   location = -772.7627083772, 161.5178822726, 6.949759763  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.MARKER_113  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.MARKER_160  &
   adams_id = 160  &
   location = -772.7627071169, 140.4200453263, 6.9497600469  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.MARKER_160  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_17 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17  &
   adams_id = 265  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_17
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.PSMAR  &
   adams_id = 1023  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.cm  &
   adams_id = 1024  &
   location = -744.6373151924, 140.4200453263, -23.1879626456  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.MARKER_111  &
   adams_id = 111  &
   location = -744.6373143122, 161.5178822726, -23.1879635887  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.MARKER_111  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.MARKER_158  &
   adams_id = 158  &
   location = -744.6373151924, 140.4200453263, -23.1879626456  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.MARKER_158  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_1_18 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18  &
   adams_id = 266  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_1_18
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.PSMAR  &
   adams_id = 1025  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.cm  &
   adams_id = 1026  &
   location = -732.5999776907, 140.4200453263, 16.2382025987  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.MARKER_109  &
   adams_id = 109  &
   location = -732.5999773614, 161.5178822726, 16.238203861  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.MARKER_109  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.MARKER_156  &
   adams_id = 156  &
   location = -732.5999776907, 140.4200453263, 16.2382025987  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.MARKER_156  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------ socket_head_cap_screw_iso_6 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_6  &
   adams_id = 267  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_6.PSMAR  &
   adams_id = 1027  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_6.cm  &
   adams_id = 1028  &
   location = -747.9666152586, 113.7161897113, -8.7922470031  &
   orientation = 4.7123889804, 0.2272744371, 1.4519562421
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_6.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_6.MARKER_132  &
   adams_id = 132  &
   location = -747.9666152586, 113.7161897113, -8.7922470031  &
   orientation = 4.7123889804, 0.2272744371, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_6.MARKER_132  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_6  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_6  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------- khung_duoi_1_2 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.khung_duoi_1_2  &
   adams_id = 268  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.khung_duoi_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.PSMAR  &
   adams_id = 1029  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.cm  &
   adams_id = 1030  &
   location = -750.0, 0.0, -6.2009871309  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_4  &
   adams_id = 4  &
   location = -750.0, 0.0, 40.78  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_4  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_19  &
   adams_id = 19  &
   location = -756.0467898064, -67.4516955531, -9.8824969825  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_19  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_21  &
   adams_id = 21  &
   location = -756.0467898064, -67.4516955531, 5.1175030175  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_21  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_23  &
   adams_id = 23  &
   location = -756.0467898064, -67.4516955531, 20.1175030175  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_23  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_25  &
   adams_id = 25  &
   location = -694.8648992107, 36.723066223, -9.0782751863  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_25  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_27  &
   adams_id = 27  &
   location = -699.7267868212, 28.4032025669, 9.4282512441  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_27  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_29  &
   adams_id = 29  &
   location = -807.59661259, 33.2473006948, -0.7271628705  &
   orientation = 5.7595865316, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_29  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_67  &
   adams_id = 67  &
   location = -765.5, 101.7239305684, 7.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_67  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_69  &
   adams_id = 69  &
   location = -654.154491955, -37.4385715255, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_69  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_71  &
   adams_id = 71  &
   location = -734.5, 101.7239305684, 7.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_71  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_73  &
   adams_id = 73  &
   location = -669.654491955, -64.2853590429, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_73  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_75  &
   adams_id = 75  &
   location = -845.845508045, -37.4385715255, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_75  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_77  &
   adams_id = 77  &
   location = -830.345508045, -64.2853590429, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_77  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_85  &
   adams_id = 85  &
   location = -750.0443890775, 65.4416458972, 6.8760328871  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_85  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_87  &
   adams_id = 87  &
   location = -693.3036776708, -32.6823808709, 6.8760328927  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_87  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_89  &
   adams_id = 89  &
   location = -806.6519332699, -32.7592650211, 6.876032889  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_89  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.khung_duoi_1_2  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.khung_duoi_1_2  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------ DC_12v_251rpm_4 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_4  &
   adams_id = 269  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DC_12v_251rpm_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_4.PSMAR  &
   adams_id = 1031  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_4.cm  &
   adams_id = 1032  &
   location = -806.6519332699, -32.7592650211, 6.876032889  &
   orientation = 2.0911657655, 1.5568916227, 6.2756593553
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_4.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_4.MARKER_88  &
   adams_id = 88  &
   location = -806.6519332699, -32.7592650211, 6.876032889  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_4.MARKER_88  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_4.MARKER_221  &
   adams_id = 221  &
   location = -842.4189312851, -53.3580948557, 0.0  &
   orientation = 5.235987756, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_4.MARKER_221  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_4  &
   density = 3.64E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_4  &
   color = NO_COLOR  &
   visibility = on
!
!------------------------------ DC_12v_251rpm_5 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_5  &
   adams_id = 270  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DC_12v_251rpm_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_5.PSMAR  &
   adams_id = 1033  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_5.cm  &
   adams_id = 1034  &
   location = -693.3036776708, -32.6823808709, 6.8760328927  &
   orientation = 1.0439682135, 1.5847010304, 7.5259138145E-003
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_5.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_5.MARKER_86  &
   adams_id = 86  &
   location = -693.3036776708, -32.6823808709, 6.8760328927  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_5.MARKER_86  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_5.MARKER_219  &
   adams_id = 219  &
   location = -657.5810687149, -53.3580948557, 0.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_5.MARKER_219  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_5  &
   density = 3.64E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_5  &
   color = NO_COLOR  &
   visibility = on
!
!------------------------------ DC_12v_251rpm_6 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_6  &
   adams_id = 271  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DC_12v_251rpm_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_6.PSMAR  &
   adams_id = 1035  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_6.cm  &
   adams_id = 1036  &
   location = -750.0443890775, 65.4416458972, 6.8760328871  &
   orientation = 6.2799559698, 1.5568916226, 6.2756593794
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_6.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_6.MARKER_84  &
   adams_id = 84  &
   location = -750.0443890775, 65.4416458972, 6.8760328871  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_6.MARKER_84  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_6.MARKER_217  &
   adams_id = 217  &
   location = -750.0, 106.7161897113, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker attributes  &
   marker_name = .Robot_Formation_1.DC_12v_251rpm_6.MARKER_217  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_6  &
   density = 3.64E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_6  &
   color = NO_COLOR  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_8 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8  &
   adams_id = 272  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8.PSMAR  &
   adams_id = 1037  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8.cm  &
   adams_id = 1038  &
   location = -830.345508045, -64.2853590429, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8.MARKER_76  &
   adams_id = 76  &
   location = -830.345508045, -64.2853590429, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8.MARKER_76  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_9 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9  &
   adams_id = 273  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9.PSMAR  &
   adams_id = 1039  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9.cm  &
   adams_id = 1040  &
   location = -845.845508045, -37.4385715255, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9.MARKER_74  &
   adams_id = 74  &
   location = -845.845508045, -37.4385715255, 7.0  &
   orientation = 2.0943951024, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9.MARKER_74  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_10 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10  &
   adams_id = 274  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10.PSMAR  &
   adams_id = 1041  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10.cm  &
   adams_id = 1042  &
   location = -669.654491955, -64.2853590429, 7.0  &
   orientation = 4.1887902048, 1.5707963268, 1.5753539915
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10.MARKER_72  &
   adams_id = 72  &
   location = -669.654491955, -64.2853590429, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10.MARKER_72  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_11 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11  &
   adams_id = 275  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11.PSMAR  &
   adams_id = 1043  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11.cm  &
   adams_id = 1044  &
   location = -734.5, 101.7239305684, 7.0  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11.MARKER_70  &
   adams_id = 70  &
   location = -734.5, 101.7239305684, 7.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11.MARKER_70  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_12 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12  &
   adams_id = 276  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12.PSMAR  &
   adams_id = 1045  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12.cm  &
   adams_id = 1046  &
   location = -654.154491955, -37.4385715255, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 6.2793978014
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12.MARKER_68  &
   adams_id = 68  &
   location = -654.154491955, -37.4385715255, 7.0  &
   orientation = 1.0471975512, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12.MARKER_68  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_2_13 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13  &
   adams_id = 277  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_2_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13.PSMAR  &
   adams_id = 1047  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13.cm  &
   adams_id = 1048  &
   location = -765.5, 101.7239305684, 7.0  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13.MARKER_66  &
   adams_id = 66  &
   location = -765.5, 101.7239305684, 7.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13.MARKER_66  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!------------------------------- Arduino_UNO_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.Arduino_UNO_2  &
   adams_id = 278  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.Arduino_UNO_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.Arduino_UNO_2.PSMAR  &
   adams_id = 1049  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Arduino_UNO_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Arduino_UNO_2.cm  &
   adams_id = 1050  &
   location = -694.8648992107, 36.723066223, -9.0782751863  &
   orientation = 3.5299897107, 1.5448322504, 1.6009761213
!
marker attributes  &
   marker_name = .Robot_Formation_1.Arduino_UNO_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.Arduino_UNO_2.MARKER_24  &
   adams_id = 24  &
   location = -694.8648992107, 36.723066223, -9.0782751863  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.Arduino_UNO_2.MARKER_24  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Arduino_UNO_2  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.Arduino_UNO_2  &
   color = COLOR_R000G048B176  &
   visibility = on
!
!------------------------------ DRIVER_cytron_23 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DRIVER_cytron_23  &
   adams_id = 302  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DRIVER_cytron_23
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR  &
   adams_id = 1051  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR23  &
   adams_id = 1052  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR23  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR22  &
   adams_id = 1053  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR22  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR21  &
   adams_id = 1054  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR21  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR20  &
   adams_id = 1055  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR20  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR19  &
   adams_id = 1056  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR19  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR18  &
   adams_id = 1057  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR18  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR17  &
   adams_id = 1058  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR17  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR16  &
   adams_id = 1059  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR16  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR15  &
   adams_id = 1060  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR15  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR14  &
   adams_id = 1061  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR14  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR13  &
   adams_id = 1062  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR13  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR12  &
   adams_id = 1063  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR12  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR11  &
   adams_id = 1064  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR11  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR10  &
   adams_id = 1065  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR10  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR9  &
   adams_id = 1066  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR9  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR8  &
   adams_id = 1067  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR8  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR7  &
   adams_id = 1068  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR7  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR6  &
   adams_id = 1069  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR6  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR5  &
   adams_id = 1070  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR4  &
   adams_id = 1071  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR3  &
   adams_id = 1072  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR2  &
   adams_id = 1073  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR1  &
   adams_id = 1074  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.cm  &
   adams_id = 1075  &
   location = -756.0467898064, -67.4516955531, -9.8824969825  &
   orientation = 4.6672721548, 1.5247219754, 1.5327380278
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.MARKER_18  &
   adams_id = 18  &
   location = -756.0467898064, -67.4516955531, -9.8824969825  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_23.MARKER_18  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_23  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DRIVER_cytron_23  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!------------------------------ DRIVER_cytron_22 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DRIVER_cytron_22  &
   adams_id = 326  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DRIVER_cytron_22
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR  &
   adams_id = 1076  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR23  &
   adams_id = 1077  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR23  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR22  &
   adams_id = 1078  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR22  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR21  &
   adams_id = 1079  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR21  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR20  &
   adams_id = 1080  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR20  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR19  &
   adams_id = 1081  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR19  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR18  &
   adams_id = 1082  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR18  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR17  &
   adams_id = 1083  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR17  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR16  &
   adams_id = 1084  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR16  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR15  &
   adams_id = 1085  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR15  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR14  &
   adams_id = 1086  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR14  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR13  &
   adams_id = 1087  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR13  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR12  &
   adams_id = 1088  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR12  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR11  &
   adams_id = 1089  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR11  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR10  &
   adams_id = 1090  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR10  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR9  &
   adams_id = 1091  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR9  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR8  &
   adams_id = 1092  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR8  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR7  &
   adams_id = 1093  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR7  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR6  &
   adams_id = 1094  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR6  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR5  &
   adams_id = 1095  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR4  &
   adams_id = 1096  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR3  &
   adams_id = 1097  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR2  &
   adams_id = 1098  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR1  &
   adams_id = 1099  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.cm  &
   adams_id = 1100  &
   location = -756.0467898064, -67.4516955531, 5.1175030175  &
   orientation = 4.6672721548, 1.5247219754, 1.5327380278
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.MARKER_20  &
   adams_id = 20  &
   location = -756.0467898064, -67.4516955531, 5.1175030175  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_22.MARKER_20  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_22  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DRIVER_cytron_22  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!------------------------------ DRIVER_cytron_21 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.DRIVER_cytron_21  &
   adams_id = 350  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.DRIVER_cytron_21
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR  &
   adams_id = 1101  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR23  &
   adams_id = 1102  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR23  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR22  &
   adams_id = 1103  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR22  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR21  &
   adams_id = 1104  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR21  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR20  &
   adams_id = 1105  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR20  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR19  &
   adams_id = 1106  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR19  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR18  &
   adams_id = 1107  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR18  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR17  &
   adams_id = 1108  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR17  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR16  &
   adams_id = 1109  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR16  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR15  &
   adams_id = 1110  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR15  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR14  &
   adams_id = 1111  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR14  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR13  &
   adams_id = 1112  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR13  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR12  &
   adams_id = 1113  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR12  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR11  &
   adams_id = 1114  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR11  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR10  &
   adams_id = 1115  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR10  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR9  &
   adams_id = 1116  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR9  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR8  &
   adams_id = 1117  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR8  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR7  &
   adams_id = 1118  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR7  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR6  &
   adams_id = 1119  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR6  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR5  &
   adams_id = 1120  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR4  &
   adams_id = 1121  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR3  &
   adams_id = 1122  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR2  &
   adams_id = 1123  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR1  &
   adams_id = 1124  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.cm  &
   adams_id = 1125  &
   location = -756.0467898064, -67.4516955531, 20.1175030175  &
   orientation = 4.6672721548, 1.5247219754, 1.5327380278
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.MARKER_22  &
   adams_id = 22  &
   location = -756.0467898064, -67.4516955531, 20.1175030175  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.DRIVER_cytron_21.MARKER_22  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_21  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.DRIVER_cytron_21  &
   color = COLOR_R144G144B160  &
   visibility = on
!
!-------------------------------- pin_li_po_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.pin_li_po_2  &
   adams_id = 351  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.pin_li_po_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.pin_li_po_2.PSMAR  &
   adams_id = 1126  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.pin_li_po_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.pin_li_po_2.cm  &
   adams_id = 1127  &
   location = -807.59661259, 33.2473006948, -0.7271628705  &
   orientation = 2.6182286308, 1.5705704226, 1.5707979147
!
marker attributes  &
   marker_name = .Robot_Formation_1.pin_li_po_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.pin_li_po_2.MARKER_28  &
   adams_id = 28  &
   location = -807.59661259, 33.2473006948, -0.7271628705  &
   orientation = 5.7595865316, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.pin_li_po_2.MARKER_28  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.pin_li_po_2.MARKER_456  &
   adams_id = 456  &
   location = -807.59661259, 33.2473006948, -0.7271628705  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.pin_li_po_2.MARKER_456  &
   visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .Robot_Formation_1.pin_li_po_2.FMARKER_457  &
   adams_id = 457
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.pin_li_po_2  &
   density = 3.46E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.pin_li_po_2  &
   color = NO_COLOR  &
   visibility = on
!
!---------------------------------- HC_06_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.HC_06_2  &
   adams_id = 352  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.HC_06_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.HC_06_2.PSMAR  &
   adams_id = 1128  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.HC_06_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.HC_06_2.cm  &
   adams_id = 1129  &
   location = -699.7267868212, 28.4032025669, 9.4282512441  &
   orientation = 3.6638963999, 1.5783411151, 1.5631578687
!
marker attributes  &
   marker_name = .Robot_Formation_1.HC_06_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.HC_06_2.MARKER_26  &
   adams_id = 26  &
   location = -699.7267868212, 28.4032025669, 9.4282512441  &
   orientation = 0.5235987756, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.HC_06_2.MARKER_26  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.HC_06_2  &
   density = 2.7E-006
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.HC_06_2  &
   color = COLOR_R112G064B064  &
   visibility = on
!
!-------------------------------- khung_tren_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.khung_tren_2  &
   adams_id = 353  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.khung_tren_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.PSMAR  &
   adams_id = 1130  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.cm  &
   adams_id = 1131  &
   location = -750.0, 0.0, 39.28  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_5  &
   adams_id = 5  &
   location = -750.0, 0.0, 40.78  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_5  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_43  &
   adams_id = 43  &
   location = -740.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_43  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_45  &
   adams_id = 45  &
   location = -760.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_45  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_47  &
   adams_id = 47  &
   location = -676.5933224532, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_47  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_49  &
   adams_id = 49  &
   location = -666.5933224532, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_49  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_51  &
   adams_id = 51  &
   location = -833.4066775468, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_51  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_53  &
   adams_id = 53  &
   location = -823.4066775468, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_53  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_451  &
   adams_id = 451  &
   location = -750.0, 0.0, 39.28  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.khung_tren_2.MARKER_451  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.khung_tren_2  &
   material_type = .Robot_Formation_1.aluminum
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.khung_tren_2  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_7 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7  &
   adams_id = 354  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7.PSMAR  &
   adams_id = 1132  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7.cm  &
   adams_id = 1133  &
   location = -823.4066775468, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7.MARKER_52  &
   adams_id = 52  &
   location = -823.4066775468, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7.MARKER_52  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_8 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8  &
   adams_id = 355  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8.PSMAR  &
   adams_id = 1134  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8.cm  &
   adams_id = 1135  &
   location = -833.4066775468, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8.MARKER_50  &
   adams_id = 50  &
   location = -833.4066775468, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8.MARKER_50  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_9 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9  &
   adams_id = 356  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9.PSMAR  &
   adams_id = 1136  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9.cm  &
   adams_id = 1137  &
   location = -666.5933224532, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9.MARKER_48  &
   adams_id = 48  &
   location = -666.5933224532, -36.6078623501, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9.MARKER_48  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_10 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10  &
   adams_id = 357  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10.PSMAR  &
   adams_id = 1138  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10.cm  &
   adams_id = 1139  &
   location = -676.5933224532, -53.9283704258, 40.6391350827  &
   orientation = 1.5707963268, 3.1415926536, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10.MARKER_46  &
   adams_id = 46  &
   location = -676.5933224532, -53.9283704258, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10.MARKER_46  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_11 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11  &
   adams_id = 358  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11.PSMAR  &
   adams_id = 1140  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11.cm  &
   adams_id = 1141  &
   location = -760.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11.MARKER_44  &
   adams_id = 44  &
   location = -760.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11.MARKER_44  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11  &
   color = COLOR_R160G160B160  &
   visibility = on
!
!----------------------- socket_head_cap_screw_iso_0_12 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
part create rigid_body name_and_position  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12  &
   adams_id = 359  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.socket_head_cap_screw_iso_0_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12.PSMAR  &
   adams_id = 1142  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12.cm  &
   adams_id = 1143  &
   location = -740.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12.MARKER_42  &
   adams_id = 42  &
   location = -740.0, 90.5362327758, 40.6391350827  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12.MARKER_42  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12  &
   material_type = .Robot_Formation_1.steel
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12  &
   color = COLOR_R160G160B160  &
   visibility = on
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "twoRobotsPlant_1_v2015.xmt_txt"  &
   model_name = .Robot_Formation_1
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_1.SOLID1  &
   color = COLOR_R096G096B096
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_2.SOLID2  &
   color = COLOR_R089G086B086
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part1_banhxe.SOLID3  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller.SOLID4  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_2.SOLID5  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_3.SOLID6  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_4.SOLID7  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_5.SOLID8  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_6.SOLID9  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_7.SOLID10  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_8.SOLID11  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_9.SOLID12  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_10.SOLID13  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_11.SOLID14  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_12.SOLID15  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_13.SOLID16  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_14.SOLID17  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_15.SOLID18  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_16.SOLID19  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_17.SOLID20  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_18.SOLID21  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part3_banhxe.SOLID22  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso.SOLID23  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_2.SOLID24  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_3.SOLID25  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.SOLID26  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_2.SOLID27  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_3.SOLID28  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso.SOLID29  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_1_2.SOLID30  &
   color = COLOR_R096G096B096
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_2_2.SOLID31  &
   color = COLOR_R089G086B086
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part1_banhxe_2.SOLID32  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_19.SOLID33  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_20.SOLID34  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_21.SOLID35  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_22.SOLID36  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_23.SOLID37  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_24.SOLID38  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_25.SOLID39  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_26.SOLID40  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_27.SOLID41  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_28.SOLID42  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_29.SOLID43  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_30.SOLID44  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_31.SOLID45  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_32.SOLID46  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_33.SOLID47  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_34.SOLID48  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_35.SOLID49  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_36.SOLID50  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part3_banhxe_2.SOLID51  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_4.SOLID52  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_5.SOLID53  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_6.SOLID54  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_4.SOLID55  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_5.SOLID56  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_6.SOLID57  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2.SOLID58  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_1_3.SOLID59  &
   color = COLOR_R096G096B096
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_2_3.SOLID60  &
   color = COLOR_R089G086B086
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part1_banhxe_3.SOLID61  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_37.SOLID62  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_38.SOLID63  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_39.SOLID64  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_40.SOLID65  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_41.SOLID66  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_42.SOLID67  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_43.SOLID68  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_44.SOLID69  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_45.SOLID70  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_46.SOLID71  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_47.SOLID72  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_48.SOLID73  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_49.SOLID74  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_50.SOLID75  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_51.SOLID76  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_52.SOLID77  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_53.SOLID78  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_54.SOLID79  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part3_banhxe_3.SOLID80  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_7.SOLID81  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_8.SOLID82  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_9.SOLID83  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_7.SOLID84  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_8.SOLID85  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_9.SOLID86  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_3.SOLID87  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.khung_duoi_1.SOLID88  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DC_12v_251rpm.SOLID89  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DC_12v_251rpm_2.SOLID90  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DC_12v_251rpm_3.SOLID91  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_2.SOLID92  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_3.SOLID93  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_4.SOLID94  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_5.SOLID95  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_6.SOLID96  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_7.SOLID97  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Arduino_UNO.SOLID98  &
   color = COLOR_R000G048B176
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID122  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID121  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID120  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID119  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID118  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID117  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID116  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID115  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID114  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID113  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID112  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID111  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID110  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID109  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID108  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID107  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID106  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID105  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID104  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID103  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID102  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID101  &
   color = COLOR_R000G176B000
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID100  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_13.SOLID99  &
   color = COLOR_R080G144B080
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID146  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID145  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID144  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID143  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID142  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID141  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID140  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID139  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID138  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID137  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID136  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID135  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID134  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID133  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID132  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID131  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID130  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID129  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID128  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID127  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID126  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID125  &
   color = COLOR_R000G176B000
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID124  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_12.SOLID123  &
   color = COLOR_R080G144B080
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID170  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID169  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID168  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID167  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID166  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID165  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID164  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID163  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID162  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID161  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID160  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID159  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID158  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID157  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID156  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID155  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID154  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID153  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID152  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID151  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID150  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID149  &
   color = COLOR_R000G176B000
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID148  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_11.SOLID147  &
   color = COLOR_R080G144B080
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.pin_li_po.SOLID171  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.HC_06.SOLID172  &
   color = COLOR_R112G064B064
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.khung_tren.SOLID173  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0.SOLID174  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_2.SOLID175  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_3.SOLID176  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_4.SOLID177  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_5.SOLID178  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_6.SOLID179  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_1_4.SOLID180  &
   color = COLOR_R096G096B096
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_2_4.SOLID181  &
   color = COLOR_R089G086B086
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part1_banhxe_4.SOLID182  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_55.SOLID183  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_56.SOLID184  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_57.SOLID185  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_58.SOLID186  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_59.SOLID187  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_60.SOLID188  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_61.SOLID189  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_62.SOLID190  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_63.SOLID191  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_64.SOLID192  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_65.SOLID193  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_66.SOLID194  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_67.SOLID195  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_68.SOLID196  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_69.SOLID197  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_70.SOLID198  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_71.SOLID199  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_72.SOLID200  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part3_banhxe_4.SOLID201  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_10.SOLID202  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_11.SOLID203  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_12.SOLID204  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_10.SOLID205  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_11.SOLID206  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_12.SOLID207  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_4.SOLID208  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_1_5.SOLID209  &
   color = COLOR_R096G096B096
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_2_5.SOLID210  &
   color = COLOR_R089G086B086
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part1_banhxe_5.SOLID211  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_73.SOLID212  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_74.SOLID213  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_75.SOLID214  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_76.SOLID215  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_77.SOLID216  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_78.SOLID217  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_79.SOLID218  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_80.SOLID219  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_81.SOLID220  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_82.SOLID221  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_83.SOLID222  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_84.SOLID223  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_85.SOLID224  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_86.SOLID225  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_87.SOLID226  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_88.SOLID227  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_89.SOLID228  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_90.SOLID229  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part3_banhxe_5.SOLID230  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_13.SOLID231  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_14.SOLID232  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_15.SOLID233  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_13.SOLID234  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_14.SOLID235  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_15.SOLID236  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_5.SOLID237  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_1_6.SOLID238  &
   color = COLOR_R096G096B096
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.omniwheel_2_6.SOLID239  &
   color = COLOR_R089G086B086
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part1_banhxe_6.SOLID240  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_91.SOLID241  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_92.SOLID242  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_93.SOLID243  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_94.SOLID244  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_95.SOLID245  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_96.SOLID246  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_97.SOLID247  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_98.SOLID248  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_99.SOLID249  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_100.SOLID250  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_101.SOLID251  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_102.SOLID252  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_103.SOLID253  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_104.SOLID254  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_105.SOLID255  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_106.SOLID256  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_107.SOLID257  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.roller_108.SOLID258  &
   color = COLOR_R048G048B048
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Part3_banhxe_6.SOLID259  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_16.SOLID260  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_17.SOLID261  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.hex_nut_gradec_iso_18.SOLID262  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_16.SOLID263  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_17.SOLID264  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_1_18.SOLID265  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_6.SOLID266  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.khung_duoi_1_2.SOLID267  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DC_12v_251rpm_4.SOLID268  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DC_12v_251rpm_5.SOLID269  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DC_12v_251rpm_6.SOLID270  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_8.SOLID271  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_9.SOLID272  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_10.SOLID273  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_11.SOLID274  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_12.SOLID275  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_2_13.SOLID276  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.Arduino_UNO_2.SOLID277  &
   color = COLOR_R000G048B176
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID301  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID300  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID299  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID298  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID297  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID296  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID295  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID294  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID293  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID292  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID291  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID290  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID289  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID288  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID287  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID286  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID285  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID284  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID283  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID282  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID281  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID280  &
   color = COLOR_R000G176B000
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID279  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_23.SOLID278  &
   color = COLOR_R080G144B080
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID325  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID324  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID323  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID322  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID321  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID320  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID319  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID318  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID317  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID316  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID315  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID314  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID313  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID312  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID311  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID310  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID309  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID308  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID307  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID306  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID305  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID304  &
   color = COLOR_R000G176B000
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID303  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_22.SOLID302  &
   color = COLOR_R080G144B080
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID349  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID348  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID347  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID346  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID345  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID344  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID343  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID342  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID341  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID340  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID339  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID338  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID337  &
   color = COLOR_R144G144B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID336  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID335  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID334  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID333  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID332  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID331  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID330  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID329  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID328  &
   color = COLOR_R000G176B000
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID327  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.DRIVER_cytron_21.SOLID326  &
   color = COLOR_R080G144B080
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.pin_li_po_2.SOLID350  &
   color = NO_COLOR
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.HC_06_2.SOLID351  &
   color = COLOR_R112G064B064
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.khung_tren_2.SOLID352  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_7.SOLID353  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_8.SOLID354  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_9.SOLID355  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_10.SOLID356  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_11.SOLID357  &
   color = COLOR_R160G160B160
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.socket_head_cap_screw_iso_0_12.SOLID358  &
   color = COLOR_R160G160B160
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_1  &
   adams_id = 1  &
   i_geometry_name = .Robot_Formation_1.roller_54.SOLID79  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_1  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_2  &
   adams_id = 2  &
   i_geometry_name = .Robot_Formation_1.roller_53.SOLID78  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_2  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_3  &
   adams_id = 3  &
   i_geometry_name = .Robot_Formation_1.roller_52.SOLID77  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_3  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_4  &
   adams_id = 4  &
   i_geometry_name = .Robot_Formation_1.roller_51.SOLID76  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_4  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_5  &
   adams_id = 5  &
   i_geometry_name = .Robot_Formation_1.roller_50.SOLID75  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_5  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_6  &
   adams_id = 6  &
   i_geometry_name = .Robot_Formation_1.roller_49.SOLID74  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_6  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_7  &
   adams_id = 7  &
   i_geometry_name = .Robot_Formation_1.roller_48.SOLID73  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_7  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_8  &
   adams_id = 8  &
   i_geometry_name = .Robot_Formation_1.roller_47.SOLID72  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_8  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_9  &
   adams_id = 9  &
   i_geometry_name = .Robot_Formation_1.roller_46.SOLID71  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_9  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_10  &
   adams_id = 10  &
   i_geometry_name = .Robot_Formation_1.roller_45.SOLID70  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_10  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_11  &
   adams_id = 11  &
   i_geometry_name = .Robot_Formation_1.roller_44.SOLID69  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_11  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_12  &
   adams_id = 12  &
   i_geometry_name = .Robot_Formation_1.roller_43.SOLID68  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_12  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_13  &
   adams_id = 13  &
   i_geometry_name = .Robot_Formation_1.roller_42.SOLID67  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_13  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_14  &
   adams_id = 14  &
   i_geometry_name = .Robot_Formation_1.roller_41.SOLID66  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_14  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_15  &
   adams_id = 15  &
   i_geometry_name = .Robot_Formation_1.roller_40.SOLID65  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_15  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_16  &
   adams_id = 16  &
   i_geometry_name = .Robot_Formation_1.roller_39.SOLID64  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_16  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_17  &
   adams_id = 17  &
   i_geometry_name = .Robot_Formation_1.roller_38.SOLID63  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_17  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_18  &
   adams_id = 18  &
   i_geometry_name = .Robot_Formation_1.roller_37.SOLID62  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_18  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_19  &
   adams_id = 19  &
   i_geometry_name = .Robot_Formation_1.roller_36.SOLID50  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_19  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_20  &
   adams_id = 20  &
   i_geometry_name = .Robot_Formation_1.roller_35.SOLID49  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_20  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_21  &
   adams_id = 21  &
   i_geometry_name = .Robot_Formation_1.roller_34.SOLID48  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_21  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_22  &
   adams_id = 22  &
   i_geometry_name = .Robot_Formation_1.roller_33.SOLID47  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_22  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_23  &
   adams_id = 23  &
   i_geometry_name = .Robot_Formation_1.roller_32.SOLID46  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_23  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_24  &
   adams_id = 24  &
   i_geometry_name = .Robot_Formation_1.roller_31.SOLID45  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_24  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_25  &
   adams_id = 25  &
   i_geometry_name = .Robot_Formation_1.roller_30.SOLID44  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_25  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_26  &
   adams_id = 26  &
   i_geometry_name = .Robot_Formation_1.roller_29.SOLID43  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_26  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_27  &
   adams_id = 27  &
   i_geometry_name = .Robot_Formation_1.roller_28.SOLID42  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_27  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_28  &
   adams_id = 28  &
   i_geometry_name = .Robot_Formation_1.roller_27.SOLID41  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_28  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_29  &
   adams_id = 29  &
   i_geometry_name = .Robot_Formation_1.roller_26.SOLID40  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_29  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_30  &
   adams_id = 30  &
   i_geometry_name = .Robot_Formation_1.roller_25.SOLID39  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_30  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_31  &
   adams_id = 31  &
   i_geometry_name = .Robot_Formation_1.roller_24.SOLID38  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_31  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_32  &
   adams_id = 32  &
   i_geometry_name = .Robot_Formation_1.roller_23.SOLID37  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_32  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_33  &
   adams_id = 33  &
   i_geometry_name = .Robot_Formation_1.roller_22.SOLID36  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_33  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_34  &
   adams_id = 34  &
   i_geometry_name = .Robot_Formation_1.roller_21.SOLID35  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_34  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_35  &
   adams_id = 35  &
   i_geometry_name = .Robot_Formation_1.roller_20.SOLID34  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_35  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_36  &
   adams_id = 36  &
   i_geometry_name = .Robot_Formation_1.roller_19.SOLID33  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_36  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_37  &
   adams_id = 37  &
   i_geometry_name = .Robot_Formation_1.roller_18.SOLID21  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_37  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_38  &
   adams_id = 38  &
   i_geometry_name = .Robot_Formation_1.roller_17.SOLID20  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_38  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_39  &
   adams_id = 39  &
   i_geometry_name = .Robot_Formation_1.roller_16.SOLID19  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_39  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_40  &
   adams_id = 40  &
   i_geometry_name = .Robot_Formation_1.roller_15.SOLID18  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_40  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_41  &
   adams_id = 41  &
   i_geometry_name = .Robot_Formation_1.roller_14.SOLID17  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_41  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_42  &
   adams_id = 42  &
   i_geometry_name = .Robot_Formation_1.roller_13.SOLID16  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_42  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_43  &
   adams_id = 43  &
   i_geometry_name = .Robot_Formation_1.roller_12.SOLID15  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_43  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_44  &
   adams_id = 44  &
   i_geometry_name = .Robot_Formation_1.roller_11.SOLID14  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_44  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_45  &
   adams_id = 45  &
   i_geometry_name = .Robot_Formation_1.roller_10.SOLID13  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_45  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_46  &
   adams_id = 46  &
   i_geometry_name = .Robot_Formation_1.roller_9.SOLID12  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_46  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_47  &
   adams_id = 47  &
   i_geometry_name = .Robot_Formation_1.roller_8.SOLID11  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_47  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_48  &
   adams_id = 48  &
   i_geometry_name = .Robot_Formation_1.roller_7.SOLID10  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_48  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_49  &
   adams_id = 49  &
   i_geometry_name = .Robot_Formation_1.roller_6.SOLID9  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_49  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_50  &
   adams_id = 50  &
   i_geometry_name = .Robot_Formation_1.roller_5.SOLID8  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_50  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_51  &
   adams_id = 51  &
   i_geometry_name = .Robot_Formation_1.roller_4.SOLID7  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_51  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_52  &
   adams_id = 52  &
   i_geometry_name = .Robot_Formation_1.roller_3.SOLID6  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_52  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_53  &
   adams_id = 53  &
   i_geometry_name = .Robot_Formation_1.roller_2.SOLID5  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_53  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_54  &
   adams_id = 54  &
   i_geometry_name = .Robot_Formation_1.roller.SOLID4  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_54  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_55  &
   adams_id = 55  &
   i_geometry_name = .Robot_Formation_1.roller_108.SOLID258  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_55  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_56  &
   adams_id = 56  &
   i_geometry_name = .Robot_Formation_1.roller_107.SOLID257  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_56  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_57  &
   adams_id = 57  &
   i_geometry_name = .Robot_Formation_1.roller_106.SOLID256  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_57  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_58  &
   adams_id = 58  &
   i_geometry_name = .Robot_Formation_1.roller_105.SOLID255  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_58  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_59  &
   adams_id = 59  &
   i_geometry_name = .Robot_Formation_1.roller_104.SOLID254  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_59  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_60  &
   adams_id = 60  &
   i_geometry_name = .Robot_Formation_1.roller_103.SOLID253  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_60  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_61  &
   adams_id = 61  &
   i_geometry_name = .Robot_Formation_1.roller_102.SOLID252  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_61  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_62  &
   adams_id = 62  &
   i_geometry_name = .Robot_Formation_1.roller_101.SOLID251  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_62  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_63  &
   adams_id = 63  &
   i_geometry_name = .Robot_Formation_1.roller_100.SOLID250  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_63  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_64  &
   adams_id = 64  &
   i_geometry_name = .Robot_Formation_1.roller_99.SOLID249  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_64  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_65  &
   adams_id = 65  &
   i_geometry_name = .Robot_Formation_1.roller_98.SOLID248  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_65  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_66  &
   adams_id = 66  &
   i_geometry_name = .Robot_Formation_1.roller_97.SOLID247  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_66  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_67  &
   adams_id = 67  &
   i_geometry_name = .Robot_Formation_1.roller_96.SOLID246  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_67  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_68  &
   adams_id = 68  &
   i_geometry_name = .Robot_Formation_1.roller_95.SOLID245  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_68  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_69  &
   adams_id = 69  &
   i_geometry_name = .Robot_Formation_1.roller_94.SOLID244  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_69  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_70  &
   adams_id = 70  &
   i_geometry_name = .Robot_Formation_1.roller_93.SOLID243  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_70  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_71  &
   adams_id = 71  &
   i_geometry_name = .Robot_Formation_1.roller_92.SOLID242  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_71  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_72  &
   adams_id = 72  &
   i_geometry_name = .Robot_Formation_1.roller_91.SOLID241  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_72  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_73  &
   adams_id = 73  &
   i_geometry_name = .Robot_Formation_1.roller_90.SOLID229  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_73  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_74  &
   adams_id = 74  &
   i_geometry_name = .Robot_Formation_1.roller_89.SOLID228  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_74  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_75  &
   adams_id = 75  &
   i_geometry_name = .Robot_Formation_1.roller_88.SOLID227  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_75  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_76  &
   adams_id = 76  &
   i_geometry_name = .Robot_Formation_1.roller_87.SOLID226  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_76  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_77  &
   adams_id = 77  &
   i_geometry_name = .Robot_Formation_1.roller_86.SOLID225  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_77  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_78  &
   adams_id = 78  &
   i_geometry_name = .Robot_Formation_1.roller_85.SOLID224  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_78  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_79  &
   adams_id = 79  &
   i_geometry_name = .Robot_Formation_1.roller_84.SOLID223  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_79  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_80  &
   adams_id = 80  &
   i_geometry_name = .Robot_Formation_1.roller_83.SOLID222  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_80  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_81  &
   adams_id = 81  &
   i_geometry_name = .Robot_Formation_1.roller_82.SOLID221  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_81  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_82  &
   adams_id = 82  &
   i_geometry_name = .Robot_Formation_1.roller_81.SOLID220  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_82  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_83  &
   adams_id = 83  &
   i_geometry_name = .Robot_Formation_1.roller_80.SOLID219  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_83  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_84  &
   adams_id = 84  &
   i_geometry_name = .Robot_Formation_1.roller_79.SOLID218  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_84  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_85  &
   adams_id = 85  &
   i_geometry_name = .Robot_Formation_1.roller_78.SOLID217  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_85  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_86  &
   adams_id = 86  &
   i_geometry_name = .Robot_Formation_1.roller_77.SOLID216  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_86  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_87  &
   adams_id = 87  &
   i_geometry_name = .Robot_Formation_1.roller_76.SOLID215  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_87  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_88  &
   adams_id = 88  &
   i_geometry_name = .Robot_Formation_1.roller_75.SOLID214  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_88  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_89  &
   adams_id = 89  &
   i_geometry_name = .Robot_Formation_1.roller_74.SOLID213  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_89  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_90  &
   adams_id = 90  &
   i_geometry_name = .Robot_Formation_1.roller_73.SOLID212  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_90  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_91  &
   adams_id = 91  &
   i_geometry_name = .Robot_Formation_1.roller_72.SOLID200  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_91  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_92  &
   adams_id = 92  &
   i_geometry_name = .Robot_Formation_1.roller_71.SOLID199  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_92  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_93  &
   adams_id = 93  &
   i_geometry_name = .Robot_Formation_1.roller_70.SOLID198  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_93  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_94  &
   adams_id = 94  &
   i_geometry_name = .Robot_Formation_1.roller_69.SOLID197  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_94  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_95  &
   adams_id = 95  &
   i_geometry_name = .Robot_Formation_1.roller_68.SOLID196  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_95  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_96  &
   adams_id = 96  &
   i_geometry_name = .Robot_Formation_1.roller_67.SOLID195  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_96  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_97  &
   adams_id = 97  &
   i_geometry_name = .Robot_Formation_1.roller_66.SOLID194  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_97  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_98  &
   adams_id = 98  &
   i_geometry_name = .Robot_Formation_1.roller_65.SOLID193  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_98  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_99  &
   adams_id = 99  &
   i_geometry_name = .Robot_Formation_1.roller_64.SOLID192  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_99  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_100  &
   adams_id = 100  &
   i_geometry_name = .Robot_Formation_1.roller_63.SOLID191  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_100  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_101  &
   adams_id = 101  &
   i_geometry_name = .Robot_Formation_1.roller_62.SOLID190  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_101  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_102  &
   adams_id = 102  &
   i_geometry_name = .Robot_Formation_1.roller_61.SOLID189  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_102  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_103  &
   adams_id = 103  &
   i_geometry_name = .Robot_Formation_1.roller_60.SOLID188  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_103  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_104  &
   adams_id = 104  &
   i_geometry_name = .Robot_Formation_1.roller_59.SOLID187  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_104  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_105  &
   adams_id = 105  &
   i_geometry_name = .Robot_Formation_1.roller_58.SOLID186  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_105  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_106  &
   adams_id = 106  &
   i_geometry_name = .Robot_Formation_1.roller_57.SOLID185  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_106  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_107  &
   adams_id = 107  &
   i_geometry_name = .Robot_Formation_1.roller_56.SOLID184  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_107  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .Robot_Formation_1.CONTACT_108  &
   adams_id = 108  &
   i_geometry_name = .Robot_Formation_1.roller_55.SOLID183  &
   j_geometry_name = .Robot_Formation_1.ground.BOX_360  &
   stiffness = 50.0  &
   damping = 0.2  &
   exponent = 2.2  &
   dmax = 0.25  &
   coulomb_friction = on  &
   mu_static = 0.22  &
   mu_dynamic = 0.18  &
   stiction_transition_velocity = 2.0  &
   friction_transition_velocity = 3.0
!
force attributes  &
   force_name = .Robot_Formation_1.CONTACT_108  &
   visibility = off  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_2  &
   j_marker_name = .Robot_Formation_1.khung_tren.MARKER_3
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_1  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_4  &
   j_marker_name = .Robot_Formation_1.khung_tren_2.MARKER_5
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_2  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_3  &
   adams_id = 3  &
   i_marker_name = .Robot_Formation_1.DRIVER_cytron_13.MARKER_6  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_7
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_3  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_4  &
   adams_id = 4  &
   i_marker_name = .Robot_Formation_1.DRIVER_cytron_12.MARKER_8  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_9
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_4  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .Robot_Formation_1.DRIVER_cytron_11.MARKER_10  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_11
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_5  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_6  &
   adams_id = 6  &
   i_marker_name = .Robot_Formation_1.Arduino_UNO.MARKER_12  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_13
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_6  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_7  &
   adams_id = 7  &
   i_marker_name = .Robot_Formation_1.HC_06.MARKER_14  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_15
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_7  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_8  &
   adams_id = 8  &
   i_marker_name = .Robot_Formation_1.pin_li_po.MARKER_16  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_17
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_8  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_9  &
   adams_id = 9  &
   i_marker_name = .Robot_Formation_1.DRIVER_cytron_23.MARKER_18  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_19
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_9  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_10  &
   adams_id = 10  &
   i_marker_name = .Robot_Formation_1.DRIVER_cytron_22.MARKER_20  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_21
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_10  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_11  &
   adams_id = 11  &
   i_marker_name = .Robot_Formation_1.DRIVER_cytron_21.MARKER_22  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_23
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_11  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_12  &
   adams_id = 12  &
   i_marker_name = .Robot_Formation_1.Arduino_UNO_2.MARKER_24  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_25
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_12  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_13  &
   adams_id = 13  &
   i_marker_name = .Robot_Formation_1.HC_06_2.MARKER_26  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_27
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_13  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_14  &
   adams_id = 14  &
   i_marker_name = .Robot_Formation_1.pin_li_po_2.MARKER_28  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_29
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_14  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_15  &
   adams_id = 15  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_6.MARKER_30  &
   j_marker_name = .Robot_Formation_1.khung_tren.MARKER_31
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_15  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_16  &
   adams_id = 16  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_5.MARKER_32  &
   j_marker_name = .Robot_Formation_1.khung_tren.MARKER_33
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_16  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_17  &
   adams_id = 17  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_4.MARKER_34  &
   j_marker_name = .Robot_Formation_1.khung_tren.MARKER_35
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_17  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_18  &
   adams_id = 18  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_3.MARKER_36  &
   j_marker_name = .Robot_Formation_1.khung_tren.MARKER_37
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_18  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_19  &
   adams_id = 19  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_2.MARKER_38  &
   j_marker_name = .Robot_Formation_1.khung_tren.MARKER_39
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_19  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_20  &
   adams_id = 20  &
   i_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_0.MARKER_40  &
   j_marker_name = .Robot_Formation_1.khung_tren.MARKER_41
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_20  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_21  &
   adams_id = 21  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_12.MARKER_42  &
   j_marker_name = .Robot_Formation_1.khung_tren_2.MARKER_43
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_21  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_22  &
   adams_id = 22  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_11.MARKER_44  &
   j_marker_name = .Robot_Formation_1.khung_tren_2.MARKER_45
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_22  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_23  &
   adams_id = 23  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_10.MARKER_46  &
   j_marker_name = .Robot_Formation_1.khung_tren_2.MARKER_47
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_23  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_24  &
   adams_id = 24  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_9.MARKER_48  &
   j_marker_name = .Robot_Formation_1.khung_tren_2.MARKER_49
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_24  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_25  &
   adams_id = 25  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_8.MARKER_50  &
   j_marker_name = .Robot_Formation_1.khung_tren_2.MARKER_51
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_25  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_26  &
   adams_id = 26  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_0_7.MARKER_52  &
   j_marker_name = .Robot_Formation_1.khung_tren_2.MARKER_53
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_26  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_27  &
   adams_id = 27  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_7.MARKER_54  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_55
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_27  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_28  &
   adams_id = 28  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_6.MARKER_56  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_57
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_28  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_29  &
   adams_id = 29  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_5.MARKER_58  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_59
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_29  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_30  &
   adams_id = 30  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_4.MARKER_60  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_61
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_30  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_31  &
   adams_id = 31  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_3.MARKER_62  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_63
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_31  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_32  &
   adams_id = 32  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_2.MARKER_64  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_65
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_32  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_33  &
   adams_id = 33  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_13.MARKER_66  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_67
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_33  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_34  &
   adams_id = 34  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_12.MARKER_68  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_69
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_34  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_35  &
   adams_id = 35  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_11.MARKER_70  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_71
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_35  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_36  &
   adams_id = 36  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_10.MARKER_72  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_73
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_36  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_37  &
   adams_id = 37  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_9.MARKER_74  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_75
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_37  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_38  &
   adams_id = 38  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_2_8.MARKER_76  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_77
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_38  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_39  &
   adams_id = 39  &
   i_marker_name = .Robot_Formation_1.DC_12v_251rpm_3.MARKER_78  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_79
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_39  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_40  &
   adams_id = 40  &
   i_marker_name = .Robot_Formation_1.DC_12v_251rpm_2.MARKER_80  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_81
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_40  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_41  &
   adams_id = 41  &
   i_marker_name = .Robot_Formation_1.DC_12v_251rpm.MARKER_82  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1.MARKER_83
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_41  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_42  &
   adams_id = 42  &
   i_marker_name = .Robot_Formation_1.DC_12v_251rpm_6.MARKER_84  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_85
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_42  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_43  &
   adams_id = 43  &
   i_marker_name = .Robot_Formation_1.DC_12v_251rpm_5.MARKER_86  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_87
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_43  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_44  &
   adams_id = 44  &
   i_marker_name = .Robot_Formation_1.DC_12v_251rpm_4.MARKER_88  &
   j_marker_name = .Robot_Formation_1.khung_duoi_1_2.MARKER_89
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_44  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_45  &
   adams_id = 45  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_9.MARKER_90  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_9.MARKER_91
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_45  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_46  &
   adams_id = 46  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_8.MARKER_92  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_8.MARKER_93
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_46  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_47  &
   adams_id = 47  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_7.MARKER_94  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_7.MARKER_95
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_47  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_48  &
   adams_id = 48  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_6.MARKER_96  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_6.MARKER_97
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_48  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_49  &
   adams_id = 49  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_5.MARKER_98  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_5.MARKER_99
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_49  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_50  &
   adams_id = 50  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_4.MARKER_100  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_4.MARKER_101
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_50  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_51  &
   adams_id = 51  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_3.MARKER_102  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_3.MARKER_103
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_51  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_52  &
   adams_id = 52  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_2.MARKER_104  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_2.MARKER_105
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_52  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_53  &
   adams_id = 53  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso.MARKER_106  &
   j_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.MARKER_107
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_53  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_54  &
   adams_id = 54  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_18.MARKER_108  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_18.MARKER_109
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_54  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_55  &
   adams_id = 55  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_17.MARKER_110  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_17.MARKER_111
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_55  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_56  &
   adams_id = 56  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_16.MARKER_112  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_16.MARKER_113
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_56  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_57  &
   adams_id = 57  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_15.MARKER_114  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_15.MARKER_115
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_57  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_58  &
   adams_id = 58  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_14.MARKER_116  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_14.MARKER_117
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_58  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_59  &
   adams_id = 59  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_13.MARKER_118  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_13.MARKER_119
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_59  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_60  &
   adams_id = 60  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_12.MARKER_120  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_12.MARKER_121
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_60  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_61  &
   adams_id = 61  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_11.MARKER_122  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_11.MARKER_123
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_61  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_62  &
   adams_id = 62  &
   i_marker_name = .Robot_Formation_1.hex_nut_gradec_iso_10.MARKER_124  &
   j_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_10.MARKER_125
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_62  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_63  &
   adams_id = 63  &
   i_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_3.MARKER_126  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_127
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_63  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_64  &
   adams_id = 64  &
   i_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_2.MARKER_128  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_129
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_64  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_65  &
   adams_id = 65  &
   i_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso.MARKER_130  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_131
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_65  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_66  &
   adams_id = 66  &
   i_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_6.MARKER_132  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_133
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_66  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_67  &
   adams_id = 67  &
   i_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_5.MARKER_134  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_135
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_67  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_68  &
   adams_id = 68  &
   i_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_4.MARKER_136  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_137
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_68  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_69  &
   adams_id = 69  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_9.MARKER_138  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_139
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_69  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_70  &
   adams_id = 70  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_8.MARKER_140  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_141
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_70  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_71  &
   adams_id = 71  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_7.MARKER_142  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_143
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_71  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_72  &
   adams_id = 72  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_6.MARKER_144  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_145
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_72  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_73  &
   adams_id = 73  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_5.MARKER_146  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_147
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_73  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_74  &
   adams_id = 74  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_4.MARKER_148  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_149
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_74  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_75  &
   adams_id = 75  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_3.MARKER_150  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_151
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_75  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_76  &
   adams_id = 76  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_2.MARKER_152  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_153
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_76  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_77  &
   adams_id = 77  &
   i_marker_name = .Robot_Formation_1.socket_head_cap_screw_iso_1.MARKER_154  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_155
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_77  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_78  &
   adams_id = 78  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_18.MARKER_156  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_157
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_78  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_79  &
   adams_id = 79  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_17.MARKER_158  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_159
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_79  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_80  &
   adams_id = 80  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_16.MARKER_160  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_161
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_80  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_81  &
   adams_id = 81  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_15.MARKER_162  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_163
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_81  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_82  &
   adams_id = 82  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_14.MARKER_164  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_165
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_82  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_83  &
   adams_id = 83  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_13.MARKER_166  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_167
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_83  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_84  &
   adams_id = 84  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_12.MARKER_168  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_169
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_84  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_85  &
   adams_id = 85  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_11.MARKER_170  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_171
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_85  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_86  &
   adams_id = 86  &
   i_marker_name =   &
                   .Robot_Formation_1.socket_head_cap_screw_iso_1_10.MARKER_172  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_173
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_86  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_87  &
   adams_id = 87  &
   i_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_174  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_175
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_87  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_88  &
   adams_id = 88  &
   i_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_176  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_177
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_88  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_89  &
   adams_id = 89  &
   i_marker_name = .Robot_Formation_1.Part1_banhxe_3.MARKER_178  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_179
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_89  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_90  &
   adams_id = 90  &
   i_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_180  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_181
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_90  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_91  &
   adams_id = 91  &
   i_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_182  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_183
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_91  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_92  &
   adams_id = 92  &
   i_marker_name = .Robot_Formation_1.Part1_banhxe_2.MARKER_184  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_185
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_92  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_93  &
   adams_id = 93  &
   i_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_186  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_187
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_93  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_94  &
   adams_id = 94  &
   i_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_188  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_189
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_94  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_95  &
   adams_id = 95  &
   i_marker_name = .Robot_Formation_1.Part1_banhxe.MARKER_190  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_191
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_95  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_96  &
   adams_id = 96  &
   i_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_192  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_193
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_96  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_97  &
   adams_id = 97  &
   i_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_194  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_195
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_97  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_98  &
   adams_id = 98  &
   i_marker_name = .Robot_Formation_1.Part1_banhxe_6.MARKER_196  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_197
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_98  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_99  &
   adams_id = 99  &
   i_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_198  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_199
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_99  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_100  &
   adams_id = 100  &
   i_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_200  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_201
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_100  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_101  &
   adams_id = 101  &
   i_marker_name = .Robot_Formation_1.Part1_banhxe_5.MARKER_202  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_203
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_101  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_102  &
   adams_id = 102  &
   i_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_204  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_205
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_102  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_103  &
   adams_id = 103  &
   i_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_206  &
   j_marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_207
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_103  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Robot_Formation_1.JOINT_104  &
   adams_id = 104  &
   i_marker_name = .Robot_Formation_1.Part1_banhxe_4.MARKER_208  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_209
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_104  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_105  &
   adams_id = 105  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_210  &
   j_marker_name = .Robot_Formation_1.DC_12v_251rpm_3.MARKER_211
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_105  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_106  &
   adams_id = 106  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_212  &
   j_marker_name = .Robot_Formation_1.DC_12v_251rpm_2.MARKER_213
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_106  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_107  &
   adams_id = 107  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_214  &
   j_marker_name = .Robot_Formation_1.DC_12v_251rpm.MARKER_215
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_107  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_108  &
   adams_id = 108  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_216  &
   j_marker_name = .Robot_Formation_1.DC_12v_251rpm_6.MARKER_217
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_108  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_109  &
   adams_id = 109  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_218  &
   j_marker_name = .Robot_Formation_1.DC_12v_251rpm_5.MARKER_219
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_109  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_110  &
   adams_id = 110  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_220  &
   j_marker_name = .Robot_Formation_1.DC_12v_251rpm_4.MARKER_221
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_110  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_111  &
   adams_id = 111  &
   i_marker_name = .Robot_Formation_1.roller_54.MARKER_222  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_223
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_111  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_112  &
   adams_id = 112  &
   i_marker_name = .Robot_Formation_1.roller_53.MARKER_224  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_225
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_112  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_113  &
   adams_id = 113  &
   i_marker_name = .Robot_Formation_1.roller_52.MARKER_226  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_227
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_113  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_114  &
   adams_id = 114  &
   i_marker_name = .Robot_Formation_1.roller_51.MARKER_228  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_229
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_114  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_115  &
   adams_id = 115  &
   i_marker_name = .Robot_Formation_1.roller_50.MARKER_230  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_231
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_115  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_116  &
   adams_id = 116  &
   i_marker_name = .Robot_Formation_1.roller_49.MARKER_232  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_233
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_116  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_117  &
   adams_id = 117  &
   i_marker_name = .Robot_Formation_1.roller_48.MARKER_234  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_235
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_117  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_118  &
   adams_id = 118  &
   i_marker_name = .Robot_Formation_1.roller_47.MARKER_236  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_237
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_118  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_119  &
   adams_id = 119  &
   i_marker_name = .Robot_Formation_1.roller_46.MARKER_238  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_3.MARKER_239
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_119  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_120  &
   adams_id = 120  &
   i_marker_name = .Robot_Formation_1.roller_45.MARKER_240  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_241
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_120  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_121  &
   adams_id = 121  &
   i_marker_name = .Robot_Formation_1.roller_44.MARKER_242  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_243
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_121  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_122  &
   adams_id = 122  &
   i_marker_name = .Robot_Formation_1.roller_43.MARKER_244  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_245
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_122  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_123  &
   adams_id = 123  &
   i_marker_name = .Robot_Formation_1.roller_42.MARKER_246  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_247
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_123  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_124  &
   adams_id = 124  &
   i_marker_name = .Robot_Formation_1.roller_41.MARKER_248  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_249
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_124  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_125  &
   adams_id = 125  &
   i_marker_name = .Robot_Formation_1.roller_40.MARKER_250  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_251
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_125  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_126  &
   adams_id = 126  &
   i_marker_name = .Robot_Formation_1.roller_39.MARKER_252  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_253
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_126  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_127  &
   adams_id = 127  &
   i_marker_name = .Robot_Formation_1.roller_38.MARKER_254  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_255
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_127  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_128  &
   adams_id = 128  &
   i_marker_name = .Robot_Formation_1.roller_37.MARKER_256  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_3.MARKER_257
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_128  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_129  &
   adams_id = 129  &
   i_marker_name = .Robot_Formation_1.roller_36.MARKER_258  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_259
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_129  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_130  &
   adams_id = 130  &
   i_marker_name = .Robot_Formation_1.roller_35.MARKER_260  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_261
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_130  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_131  &
   adams_id = 131  &
   i_marker_name = .Robot_Formation_1.roller_34.MARKER_262  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_263
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_131  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_132  &
   adams_id = 132  &
   i_marker_name = .Robot_Formation_1.roller_33.MARKER_264  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_265
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_132  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_133  &
   adams_id = 133  &
   i_marker_name = .Robot_Formation_1.roller_32.MARKER_266  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_267
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_133  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_134  &
   adams_id = 134  &
   i_marker_name = .Robot_Formation_1.roller_31.MARKER_268  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_269
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_134  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_135  &
   adams_id = 135  &
   i_marker_name = .Robot_Formation_1.roller_30.MARKER_270  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_271
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_135  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_136  &
   adams_id = 136  &
   i_marker_name = .Robot_Formation_1.roller_29.MARKER_272  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_273
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_136  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_137  &
   adams_id = 137  &
   i_marker_name = .Robot_Formation_1.roller_28.MARKER_274  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_2.MARKER_275
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_137  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_138  &
   adams_id = 138  &
   i_marker_name = .Robot_Formation_1.roller_27.MARKER_276  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_277
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_138  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_139  &
   adams_id = 139  &
   i_marker_name = .Robot_Formation_1.roller_26.MARKER_278  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_279
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_139  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_140  &
   adams_id = 140  &
   i_marker_name = .Robot_Formation_1.roller_25.MARKER_280  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_281
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_140  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_141  &
   adams_id = 141  &
   i_marker_name = .Robot_Formation_1.roller_24.MARKER_282  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_283
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_141  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_142  &
   adams_id = 142  &
   i_marker_name = .Robot_Formation_1.roller_23.MARKER_284  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_285
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_142  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_143  &
   adams_id = 143  &
   i_marker_name = .Robot_Formation_1.roller_22.MARKER_286  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_287
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_143  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_144  &
   adams_id = 144  &
   i_marker_name = .Robot_Formation_1.roller_21.MARKER_288  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_289
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_144  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_145  &
   adams_id = 145  &
   i_marker_name = .Robot_Formation_1.roller_20.MARKER_290  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_291
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_145  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_146  &
   adams_id = 146  &
   i_marker_name = .Robot_Formation_1.roller_19.MARKER_292  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_2.MARKER_293
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_146  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_147  &
   adams_id = 147  &
   i_marker_name = .Robot_Formation_1.roller_18.MARKER_294  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_295
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_147  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_148  &
   adams_id = 148  &
   i_marker_name = .Robot_Formation_1.roller_17.MARKER_296  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_297
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_148  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_149  &
   adams_id = 149  &
   i_marker_name = .Robot_Formation_1.roller_16.MARKER_298  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_299
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_149  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_150  &
   adams_id = 150  &
   i_marker_name = .Robot_Formation_1.roller_15.MARKER_300  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_301
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_150  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_151  &
   adams_id = 151  &
   i_marker_name = .Robot_Formation_1.roller_14.MARKER_302  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_303
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_151  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_152  &
   adams_id = 152  &
   i_marker_name = .Robot_Formation_1.roller_13.MARKER_304  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_305
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_152  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_153  &
   adams_id = 153  &
   i_marker_name = .Robot_Formation_1.roller_12.MARKER_306  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_307
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_153  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_154  &
   adams_id = 154  &
   i_marker_name = .Robot_Formation_1.roller_11.MARKER_308  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_309
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_154  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_155  &
   adams_id = 155  &
   i_marker_name = .Robot_Formation_1.roller_10.MARKER_310  &
   j_marker_name = .Robot_Formation_1.omniwheel_2.MARKER_311
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_155  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_156  &
   adams_id = 156  &
   i_marker_name = .Robot_Formation_1.roller_9.MARKER_312  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_313
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_156  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_157  &
   adams_id = 157  &
   i_marker_name = .Robot_Formation_1.roller_8.MARKER_314  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_315
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_157  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_158  &
   adams_id = 158  &
   i_marker_name = .Robot_Formation_1.roller_7.MARKER_316  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_317
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_158  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_159  &
   adams_id = 159  &
   i_marker_name = .Robot_Formation_1.roller_6.MARKER_318  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_319
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_159  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_160  &
   adams_id = 160  &
   i_marker_name = .Robot_Formation_1.roller_5.MARKER_320  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_321
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_160  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_161  &
   adams_id = 161  &
   i_marker_name = .Robot_Formation_1.roller_4.MARKER_322  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_323
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_161  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_162  &
   adams_id = 162  &
   i_marker_name = .Robot_Formation_1.roller_3.MARKER_324  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_325
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_162  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_163  &
   adams_id = 163  &
   i_marker_name = .Robot_Formation_1.roller_2.MARKER_326  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_327
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_163  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_164  &
   adams_id = 164  &
   i_marker_name = .Robot_Formation_1.roller.MARKER_328  &
   j_marker_name = .Robot_Formation_1.omniwheel_1.MARKER_329
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_164  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_165  &
   adams_id = 165  &
   i_marker_name = .Robot_Formation_1.roller_108.MARKER_330  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_331
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_165  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_166  &
   adams_id = 166  &
   i_marker_name = .Robot_Formation_1.roller_107.MARKER_332  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_333
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_166  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_167  &
   adams_id = 167  &
   i_marker_name = .Robot_Formation_1.roller_106.MARKER_334  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_335
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_167  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_168  &
   adams_id = 168  &
   i_marker_name = .Robot_Formation_1.roller_105.MARKER_336  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_337
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_168  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_169  &
   adams_id = 169  &
   i_marker_name = .Robot_Formation_1.roller_104.MARKER_338  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_339
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_169  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_170  &
   adams_id = 170  &
   i_marker_name = .Robot_Formation_1.roller_103.MARKER_340  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_341
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_170  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_171  &
   adams_id = 171  &
   i_marker_name = .Robot_Formation_1.roller_102.MARKER_342  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_343
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_171  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_172  &
   adams_id = 172  &
   i_marker_name = .Robot_Formation_1.roller_101.MARKER_344  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_345
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_172  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_173  &
   adams_id = 173  &
   i_marker_name = .Robot_Formation_1.roller_100.MARKER_346  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_6.MARKER_347
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_173  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_174  &
   adams_id = 174  &
   i_marker_name = .Robot_Formation_1.roller_99.MARKER_348  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_349
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_174  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_175  &
   adams_id = 175  &
   i_marker_name = .Robot_Formation_1.roller_98.MARKER_350  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_351
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_175  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_176  &
   adams_id = 176  &
   i_marker_name = .Robot_Formation_1.roller_97.MARKER_352  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_353
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_176  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_177  &
   adams_id = 177  &
   i_marker_name = .Robot_Formation_1.roller_96.MARKER_354  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_355
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_177  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_178  &
   adams_id = 178  &
   i_marker_name = .Robot_Formation_1.roller_95.MARKER_356  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_357
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_178  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_179  &
   adams_id = 179  &
   i_marker_name = .Robot_Formation_1.roller_94.MARKER_358  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_359
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_179  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_180  &
   adams_id = 180  &
   i_marker_name = .Robot_Formation_1.roller_93.MARKER_360  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_361
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_180  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_181  &
   adams_id = 181  &
   i_marker_name = .Robot_Formation_1.roller_92.MARKER_362  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_363
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_181  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_182  &
   adams_id = 182  &
   i_marker_name = .Robot_Formation_1.roller_91.MARKER_364  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_6.MARKER_365
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_182  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_183  &
   adams_id = 183  &
   i_marker_name = .Robot_Formation_1.roller_90.MARKER_366  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_367
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_183  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_184  &
   adams_id = 184  &
   i_marker_name = .Robot_Formation_1.roller_89.MARKER_368  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_369
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_184  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_185  &
   adams_id = 185  &
   i_marker_name = .Robot_Formation_1.roller_88.MARKER_370  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_371
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_185  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_186  &
   adams_id = 186  &
   i_marker_name = .Robot_Formation_1.roller_87.MARKER_372  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_373
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_186  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_187  &
   adams_id = 187  &
   i_marker_name = .Robot_Formation_1.roller_86.MARKER_374  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_375
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_187  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_188  &
   adams_id = 188  &
   i_marker_name = .Robot_Formation_1.roller_85.MARKER_376  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_377
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_188  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_189  &
   adams_id = 189  &
   i_marker_name = .Robot_Formation_1.roller_84.MARKER_378  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_379
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_189  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_190  &
   adams_id = 190  &
   i_marker_name = .Robot_Formation_1.roller_83.MARKER_380  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_381
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_190  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_191  &
   adams_id = 191  &
   i_marker_name = .Robot_Formation_1.roller_82.MARKER_382  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_5.MARKER_383
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_191  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_192  &
   adams_id = 192  &
   i_marker_name = .Robot_Formation_1.roller_81.MARKER_384  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_385
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_192  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_193  &
   adams_id = 193  &
   i_marker_name = .Robot_Formation_1.roller_80.MARKER_386  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_387
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_193  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_194  &
   adams_id = 194  &
   i_marker_name = .Robot_Formation_1.roller_79.MARKER_388  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_389
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_194  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_195  &
   adams_id = 195  &
   i_marker_name = .Robot_Formation_1.roller_78.MARKER_390  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_391
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_195  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_196  &
   adams_id = 196  &
   i_marker_name = .Robot_Formation_1.roller_77.MARKER_392  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_393
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_196  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_197  &
   adams_id = 197  &
   i_marker_name = .Robot_Formation_1.roller_76.MARKER_394  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_395
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_197  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_198  &
   adams_id = 198  &
   i_marker_name = .Robot_Formation_1.roller_75.MARKER_396  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_397
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_198  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_199  &
   adams_id = 199  &
   i_marker_name = .Robot_Formation_1.roller_74.MARKER_398  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_399
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_199  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_200  &
   adams_id = 200  &
   i_marker_name = .Robot_Formation_1.roller_73.MARKER_400  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_5.MARKER_401
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_200  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_201  &
   adams_id = 201  &
   i_marker_name = .Robot_Formation_1.roller_72.MARKER_402  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_403
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_201  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_202  &
   adams_id = 202  &
   i_marker_name = .Robot_Formation_1.roller_71.MARKER_404  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_405
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_202  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_203  &
   adams_id = 203  &
   i_marker_name = .Robot_Formation_1.roller_70.MARKER_406  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_407
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_203  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_204  &
   adams_id = 204  &
   i_marker_name = .Robot_Formation_1.roller_69.MARKER_408  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_409
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_204  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_205  &
   adams_id = 205  &
   i_marker_name = .Robot_Formation_1.roller_68.MARKER_410  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_411
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_205  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_206  &
   adams_id = 206  &
   i_marker_name = .Robot_Formation_1.roller_67.MARKER_412  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_413
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_206  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_207  &
   adams_id = 207  &
   i_marker_name = .Robot_Formation_1.roller_66.MARKER_414  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_415
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_207  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_208  &
   adams_id = 208  &
   i_marker_name = .Robot_Formation_1.roller_65.MARKER_416  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_417
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_208  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_209  &
   adams_id = 209  &
   i_marker_name = .Robot_Formation_1.roller_64.MARKER_418  &
   j_marker_name = .Robot_Formation_1.omniwheel_2_4.MARKER_419
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_209  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_210  &
   adams_id = 210  &
   i_marker_name = .Robot_Formation_1.roller_63.MARKER_420  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_421
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_210  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_211  &
   adams_id = 211  &
   i_marker_name = .Robot_Formation_1.roller_62.MARKER_422  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_423
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_211  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_212  &
   adams_id = 212  &
   i_marker_name = .Robot_Formation_1.roller_61.MARKER_424  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_425
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_212  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_213  &
   adams_id = 213  &
   i_marker_name = .Robot_Formation_1.roller_60.MARKER_426  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_427
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_213  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_214  &
   adams_id = 214  &
   i_marker_name = .Robot_Formation_1.roller_59.MARKER_428  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_429
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_214  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_215  &
   adams_id = 215  &
   i_marker_name = .Robot_Formation_1.roller_58.MARKER_430  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_431
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_215  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_216  &
   adams_id = 216  &
   i_marker_name = .Robot_Formation_1.roller_57.MARKER_432  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_433
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_216  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_217  &
   adams_id = 217  &
   i_marker_name = .Robot_Formation_1.roller_56.MARKER_434  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_435
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_217  &
   visibility = off  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Robot_Formation_1.JOINT_218  &
   adams_id = 218  &
   i_marker_name = .Robot_Formation_1.roller_55.MARKER_436  &
   j_marker_name = .Robot_Formation_1.omniwheel_1_4.MARKER_437
!
constraint attributes  &
   constraint_name = .Robot_Formation_1.JOINT_218  &
   visibility = off  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_1  &
   adams_id = 1  &
   joint_name = .Robot_Formation_1.JOINT_111  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_1  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_2  &
   adams_id = 2  &
   joint_name = .Robot_Formation_1.JOINT_112  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_2  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_3  &
   adams_id = 3  &
   joint_name = .Robot_Formation_1.JOINT_113  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_3  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_4  &
   adams_id = 4  &
   joint_name = .Robot_Formation_1.JOINT_114  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_4  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_5  &
   adams_id = 5  &
   joint_name = .Robot_Formation_1.JOINT_115  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_5  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_6  &
   adams_id = 6  &
   joint_name = .Robot_Formation_1.JOINT_116  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_6  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_7  &
   adams_id = 7  &
   joint_name = .Robot_Formation_1.JOINT_117  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_7  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_8  &
   adams_id = 8  &
   joint_name = .Robot_Formation_1.JOINT_118  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_8  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_9  &
   adams_id = 9  &
   joint_name = .Robot_Formation_1.JOINT_119  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_9  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_10  &
   adams_id = 10  &
   joint_name = .Robot_Formation_1.JOINT_120  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_10  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_11  &
   adams_id = 11  &
   joint_name = .Robot_Formation_1.JOINT_121  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_11  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_12  &
   adams_id = 12  &
   joint_name = .Robot_Formation_1.JOINT_122  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_12  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_13  &
   adams_id = 13  &
   joint_name = .Robot_Formation_1.JOINT_123  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_13  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_14  &
   adams_id = 14  &
   joint_name = .Robot_Formation_1.JOINT_124  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_14  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_15  &
   adams_id = 15  &
   joint_name = .Robot_Formation_1.JOINT_125  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_15  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_16  &
   adams_id = 16  &
   joint_name = .Robot_Formation_1.JOINT_126  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_16  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_17  &
   adams_id = 17  &
   joint_name = .Robot_Formation_1.JOINT_127  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_17  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_18  &
   adams_id = 18  &
   joint_name = .Robot_Formation_1.JOINT_128  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_18  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_19  &
   adams_id = 19  &
   joint_name = .Robot_Formation_1.JOINT_129  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_19  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_20  &
   adams_id = 20  &
   joint_name = .Robot_Formation_1.JOINT_130  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_20  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_21  &
   adams_id = 21  &
   joint_name = .Robot_Formation_1.JOINT_131  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_21  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_22  &
   adams_id = 22  &
   joint_name = .Robot_Formation_1.JOINT_132  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_22  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_23  &
   adams_id = 23  &
   joint_name = .Robot_Formation_1.JOINT_133  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_23  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_24  &
   adams_id = 24  &
   joint_name = .Robot_Formation_1.JOINT_134  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_24  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_25  &
   adams_id = 25  &
   joint_name = .Robot_Formation_1.JOINT_135  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_25  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_26  &
   adams_id = 26  &
   joint_name = .Robot_Formation_1.JOINT_136  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_26  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_27  &
   adams_id = 27  &
   joint_name = .Robot_Formation_1.JOINT_137  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_27  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_28  &
   adams_id = 28  &
   joint_name = .Robot_Formation_1.JOINT_138  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_28  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_29  &
   adams_id = 29  &
   joint_name = .Robot_Formation_1.JOINT_139  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_29  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_30  &
   adams_id = 30  &
   joint_name = .Robot_Formation_1.JOINT_140  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_30  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_31  &
   adams_id = 31  &
   joint_name = .Robot_Formation_1.JOINT_141  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_31  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_32  &
   adams_id = 32  &
   joint_name = .Robot_Formation_1.JOINT_142  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_32  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_33  &
   adams_id = 33  &
   joint_name = .Robot_Formation_1.JOINT_143  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_33  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_34  &
   adams_id = 34  &
   joint_name = .Robot_Formation_1.JOINT_144  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_34  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_35  &
   adams_id = 35  &
   joint_name = .Robot_Formation_1.JOINT_145  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_35  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_36  &
   adams_id = 36  &
   joint_name = .Robot_Formation_1.JOINT_146  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_36  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_37  &
   adams_id = 37  &
   joint_name = .Robot_Formation_1.JOINT_147  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_37  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_38  &
   adams_id = 38  &
   joint_name = .Robot_Formation_1.JOINT_148  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_38  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_39  &
   adams_id = 39  &
   joint_name = .Robot_Formation_1.JOINT_149  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_39  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_40  &
   adams_id = 40  &
   joint_name = .Robot_Formation_1.JOINT_150  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_40  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_41  &
   adams_id = 41  &
   joint_name = .Robot_Formation_1.JOINT_151  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_41  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_42  &
   adams_id = 42  &
   joint_name = .Robot_Formation_1.JOINT_152  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_42  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_43  &
   adams_id = 43  &
   joint_name = .Robot_Formation_1.JOINT_153  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_43  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_44  &
   adams_id = 44  &
   joint_name = .Robot_Formation_1.JOINT_154  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_44  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_45  &
   adams_id = 45  &
   joint_name = .Robot_Formation_1.JOINT_155  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_45  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_46  &
   adams_id = 46  &
   joint_name = .Robot_Formation_1.JOINT_156  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_46  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_47  &
   adams_id = 47  &
   joint_name = .Robot_Formation_1.JOINT_157  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_47  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_48  &
   adams_id = 48  &
   joint_name = .Robot_Formation_1.JOINT_158  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_48  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_49  &
   adams_id = 49  &
   joint_name = .Robot_Formation_1.JOINT_159  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_49  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_50  &
   adams_id = 50  &
   joint_name = .Robot_Formation_1.JOINT_160  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_50  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_51  &
   adams_id = 51  &
   joint_name = .Robot_Formation_1.JOINT_161  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_51  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_52  &
   adams_id = 52  &
   joint_name = .Robot_Formation_1.JOINT_162  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_52  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_53  &
   adams_id = 53  &
   joint_name = .Robot_Formation_1.JOINT_163  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_53  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_54  &
   adams_id = 54  &
   joint_name = .Robot_Formation_1.JOINT_164  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_54  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_55  &
   adams_id = 55  &
   joint_name = .Robot_Formation_1.JOINT_165  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_55  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_56  &
   adams_id = 56  &
   joint_name = .Robot_Formation_1.JOINT_166  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_56  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_57  &
   adams_id = 57  &
   joint_name = .Robot_Formation_1.JOINT_167  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_57  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_58  &
   adams_id = 58  &
   joint_name = .Robot_Formation_1.JOINT_168  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_58  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_59  &
   adams_id = 59  &
   joint_name = .Robot_Formation_1.JOINT_169  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_59  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_60  &
   adams_id = 60  &
   joint_name = .Robot_Formation_1.JOINT_170  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_60  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_61  &
   adams_id = 61  &
   joint_name = .Robot_Formation_1.JOINT_171  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_61  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_62  &
   adams_id = 62  &
   joint_name = .Robot_Formation_1.JOINT_172  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_62  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_63  &
   adams_id = 63  &
   joint_name = .Robot_Formation_1.JOINT_173  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_63  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_64  &
   adams_id = 64  &
   joint_name = .Robot_Formation_1.JOINT_174  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_64  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_65  &
   adams_id = 65  &
   joint_name = .Robot_Formation_1.JOINT_175  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_65  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_66  &
   adams_id = 66  &
   joint_name = .Robot_Formation_1.JOINT_176  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_66  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_67  &
   adams_id = 67  &
   joint_name = .Robot_Formation_1.JOINT_177  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_67  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_68  &
   adams_id = 68  &
   joint_name = .Robot_Formation_1.JOINT_178  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_68  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_69  &
   adams_id = 69  &
   joint_name = .Robot_Formation_1.JOINT_179  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_69  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_70  &
   adams_id = 70  &
   joint_name = .Robot_Formation_1.JOINT_180  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_70  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_71  &
   adams_id = 71  &
   joint_name = .Robot_Formation_1.JOINT_181  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_71  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_72  &
   adams_id = 72  &
   joint_name = .Robot_Formation_1.JOINT_182  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_72  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_73  &
   adams_id = 73  &
   joint_name = .Robot_Formation_1.JOINT_183  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_73  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_74  &
   adams_id = 74  &
   joint_name = .Robot_Formation_1.JOINT_184  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_74  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_75  &
   adams_id = 75  &
   joint_name = .Robot_Formation_1.JOINT_185  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_75  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_76  &
   adams_id = 76  &
   joint_name = .Robot_Formation_1.JOINT_186  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_76  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_77  &
   adams_id = 77  &
   joint_name = .Robot_Formation_1.JOINT_187  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_77  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_78  &
   adams_id = 78  &
   joint_name = .Robot_Formation_1.JOINT_188  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_78  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_79  &
   adams_id = 79  &
   joint_name = .Robot_Formation_1.JOINT_189  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_79  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_80  &
   adams_id = 80  &
   joint_name = .Robot_Formation_1.JOINT_190  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_80  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_81  &
   adams_id = 81  &
   joint_name = .Robot_Formation_1.JOINT_191  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_81  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_82  &
   adams_id = 82  &
   joint_name = .Robot_Formation_1.JOINT_192  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_82  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_83  &
   adams_id = 83  &
   joint_name = .Robot_Formation_1.JOINT_193  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_83  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_84  &
   adams_id = 84  &
   joint_name = .Robot_Formation_1.JOINT_194  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_84  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_85  &
   adams_id = 85  &
   joint_name = .Robot_Formation_1.JOINT_195  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_85  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_86  &
   adams_id = 86  &
   joint_name = .Robot_Formation_1.JOINT_196  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_86  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_87  &
   adams_id = 87  &
   joint_name = .Robot_Formation_1.JOINT_197  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_87  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_88  &
   adams_id = 88  &
   joint_name = .Robot_Formation_1.JOINT_198  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_88  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_89  &
   adams_id = 89  &
   joint_name = .Robot_Formation_1.JOINT_199  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_89  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_90  &
   adams_id = 90  &
   joint_name = .Robot_Formation_1.JOINT_200  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_90  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_91  &
   adams_id = 91  &
   joint_name = .Robot_Formation_1.JOINT_201  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_91  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_92  &
   adams_id = 92  &
   joint_name = .Robot_Formation_1.JOINT_202  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_92  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_93  &
   adams_id = 93  &
   joint_name = .Robot_Formation_1.JOINT_203  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_93  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_94  &
   adams_id = 94  &
   joint_name = .Robot_Formation_1.JOINT_204  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_94  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_95  &
   adams_id = 95  &
   joint_name = .Robot_Formation_1.JOINT_205  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_95  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_96  &
   adams_id = 96  &
   joint_name = .Robot_Formation_1.JOINT_206  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_96  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_97  &
   adams_id = 97  &
   joint_name = .Robot_Formation_1.JOINT_207  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_97  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_98  &
   adams_id = 98  &
   joint_name = .Robot_Formation_1.JOINT_208  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_98  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_99  &
   adams_id = 99  &
   joint_name = .Robot_Formation_1.JOINT_209  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_99  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_100  &
   adams_id = 100  &
   joint_name = .Robot_Formation_1.JOINT_210  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_100  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_101  &
   adams_id = 101  &
   joint_name = .Robot_Formation_1.JOINT_211  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_101  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_102  &
   adams_id = 102  &
   joint_name = .Robot_Formation_1.JOINT_212  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_102  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_103  &
   adams_id = 103  &
   joint_name = .Robot_Formation_1.JOINT_213  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_103  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_104  &
   adams_id = 104  &
   joint_name = .Robot_Formation_1.JOINT_214  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_104  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_105  &
   adams_id = 105  &
   joint_name = .Robot_Formation_1.JOINT_215  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_105  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_106  &
   adams_id = 106  &
   joint_name = .Robot_Formation_1.JOINT_216  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_106  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_107  &
   adams_id = 107  &
   joint_name = .Robot_Formation_1.JOINT_217  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_107  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_108  &
   adams_id = 108  &
   joint_name = .Robot_Formation_1.JOINT_218  &
   mu_static = 0.11  &
   mu_dynamic = 8.0E-002  &
   friction_arm = 1.4  &
   bending_reaction_arm = 2.8  &
   pin_radius = 1.4  &
   stiction_transition_velocity = 2.5  &
   max_stiction_deformation = 0.1  &
   friction_torque_preload = 1.0E-002  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_108  &
   visibility = off  &
   name_visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_109  &
   adams_id = 109  &
   joint_name = .Robot_Formation_1.JOINT_105  &
   mu_static = 5.0E-002  &
   mu_dynamic = 5.0E-002  &
   friction_arm = 4.5  &
   bending_reaction_arm = 4.0  &
   pin_radius = 2.5  &
   stiction_transition_velocity = 1.5  &
   max_stiction_deformation = 0.2  &
   friction_torque_preload = 1.5  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_109  &
   visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_110  &
   adams_id = 110  &
   joint_name = .Robot_Formation_1.JOINT_106  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 4.5  &
   bending_reaction_arm = 4.0  &
   pin_radius = 2.5  &
   stiction_transition_velocity = 1.5  &
   max_stiction_deformation = 0.2  &
   friction_torque_preload = 1.5  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_110  &
   visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_111  &
   adams_id = 111  &
   joint_name = .Robot_Formation_1.JOINT_107  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 4.5  &
   bending_reaction_arm = 4.0  &
   pin_radius = 2.5  &
   stiction_transition_velocity = 1.5  &
   max_stiction_deformation = 0.2  &
   friction_torque_preload = 1.5  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_111  &
   visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_112  &
   adams_id = 112  &
   joint_name = .Robot_Formation_1.JOINT_108  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 4.5  &
   bending_reaction_arm = 4.0  &
   pin_radius = 2.5  &
   stiction_transition_velocity = 1.5  &
   max_stiction_deformation = 0.2  &
   friction_torque_preload = 1.5  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_112  &
   visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_113  &
   adams_id = 113  &
   joint_name = .Robot_Formation_1.JOINT_109  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 4.5  &
   bending_reaction_arm = 4.0  &
   pin_radius = 2.5  &
   stiction_transition_velocity = 1.5  &
   max_stiction_deformation = 0.2  &
   friction_torque_preload = 1.5  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_113  &
   visibility = off
!
force create element_like friction  &
   friction_name = .Robot_Formation_1.FRICTION_114  &
   adams_id = 114  &
   joint_name = .Robot_Formation_1.JOINT_110  &
   mu_static = 5.0E-002  &
   mu_dynamic = 3.0E-002  &
   friction_arm = 4.5  &
   bending_reaction_arm = 4.0  &
   pin_radius = 2.5  &
   stiction_transition_velocity = 1.5  &
   max_stiction_deformation = 0.2  &
   friction_torque_preload = 1.5  &
   effect = all  &
   preload = on  &
   reaction_force = on  &
   bending_moment = off  &
   inactive_during_static = off
!
force attributes  &
   force_name = .Robot_Formation_1.FRICTION_114  &
   visibility = off
!
force create direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_13  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_438  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_439  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_12  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_440  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_441  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_11  &
   adams_id = 3  &
   type_of_freedom = rotational  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_442  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_443  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_23  &
   adams_id = 4  &
   type_of_freedom = rotational  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_444  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_445  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_22  &
   adams_id = 5  &
   type_of_freedom = rotational  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_446  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_447  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_21  &
   adams_id = 6  &
   type_of_freedom = rotational  &
   i_marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_448  &
   j_marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_449  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_D  &
   adams_id = 7  &
   type_of_freedom = translational  &
   i_marker_name = .Robot_Formation_1.khung_tren.MARKER_450  &
   j_marker_name = .Robot_Formation_1.khung_tren_2.MARKER_451  &
   action_only = off  &
   function = ""
!
force create direct force_vector  &
   force_vector_name = .Robot_Formation_1.VFORCE_1  &
   adams_id = 1  &
   i_marker_name = .Robot_Formation_1.ground.MARKER_452  &
   j_floating_marker_name = .Robot_Formation_1.pin_li_po.FMARKER_454  &
   ref_marker_name = .Robot_Formation_1.pin_li_po.MARKER_453  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .Robot_Formation_1.VFORCE_2  &
   adams_id = 2  &
   i_marker_name = .Robot_Formation_1.ground.MARKER_455  &
   j_floating_marker_name = .Robot_Formation_1.pin_li_po_2.FMARKER_457  &
   ref_marker_name = .Robot_Formation_1.pin_li_po_2.MARKER_456  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Robot_Formation_1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=5.0 number_of_steps=500 model_name=.Robot_Formation_1"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .Robot_Formation_1.twoRobotsPlant_1_v2015  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.input_channels  &
   object_value =   &
      .Robot_Formation_1.T_11,  &
      .Robot_Formation_1.T_12,  &
      .Robot_Formation_1.T_13,  &
      .Robot_Formation_1.T_21,  &
      .Robot_Formation_1.T_22,  &
      .Robot_Formation_1.T_23,  &
      .Robot_Formation_1.FD,  &
      .Robot_Formation_1.FX_1,  &
      .Robot_Formation_1.FX_2,  &
      .Robot_Formation_1.FY_1,  &
      .Robot_Formation_1.FY_2
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.output_channels  &
   object_value =   &
      .Robot_Formation_1.X_1,  &
      .Robot_Formation_1.Y_1,  &
      .Robot_Formation_1.O_1,  &
      .Robot_Formation_1.X_2,  &
      .Robot_Formation_1.Y_2,  &
      .Robot_Formation_1.O_2,  &
      .Robot_Formation_1.W_11,  &
      .Robot_Formation_1.W_12,  &
      .Robot_Formation_1.W_13,  &
      .Robot_Formation_1.W_21,  &
      .Robot_Formation_1.W_22,  &
      .Robot_Formation_1.W_23
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.file_name  &
   string_value = "twoRobotsPlant_1_v2015"
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.host  &
   string_value = "baqumau-PC.mshome.net"
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .Robot_Formation_1.twoRobotsPlant_1_v2015.output_rate  &
   integer_value = 1
!
ude modify instance  &
   instance_name = .Robot_Formation_1.twoRobotsPlant_1_v2015
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Robot_Formation_1.ground
!
geometry create shape force  &
   force_name = .Robot_Formation_1.SFORCE_1_force_graphic_1  &
   adams_id = 847  &
   force_element_name = .Robot_Formation_1.SFORCE_13  &
   applied_at_marker_name = .Robot_Formation_1.Part3_banhxe_3.MARKER_438
!
geometry create shape force  &
   force_name = .Robot_Formation_1.SFORCE_2_force_graphic_1  &
   adams_id = 848  &
   force_element_name = .Robot_Formation_1.SFORCE_12  &
   applied_at_marker_name = .Robot_Formation_1.Part3_banhxe_2.MARKER_440
!
geometry create shape force  &
   force_name = .Robot_Formation_1.SFORCE_3_force_graphic_1  &
   adams_id = 849  &
   force_element_name = .Robot_Formation_1.SFORCE_11  &
   applied_at_marker_name = .Robot_Formation_1.Part3_banhxe.MARKER_442
!
geometry create shape force  &
   force_name = .Robot_Formation_1.SFORCE_4_force_graphic_1  &
   adams_id = 850  &
   force_element_name = .Robot_Formation_1.SFORCE_23  &
   applied_at_marker_name = .Robot_Formation_1.Part3_banhxe_6.MARKER_444
!
geometry create shape force  &
   force_name = .Robot_Formation_1.SFORCE_5_force_graphic_1  &
   adams_id = 851  &
   force_element_name = .Robot_Formation_1.SFORCE_22  &
   applied_at_marker_name = .Robot_Formation_1.Part3_banhxe_5.MARKER_446
!
geometry create shape force  &
   force_name = .Robot_Formation_1.SFORCE_6_force_graphic_1  &
   adams_id = 852  &
   force_element_name = .Robot_Formation_1.SFORCE_21  &
   applied_at_marker_name = .Robot_Formation_1.Part3_banhxe_4.MARKER_448
!
geometry create shape force  &
   force_name = .Robot_Formation_1.SFORCE_7_force_graphic_1  &
   adams_id = 853  &
   force_element_name = .Robot_Formation_1.SFORCE_D  &
   applied_at_marker_name = .Robot_Formation_1.khung_tren.MARKER_450
!
geometry create shape force  &
   force_name = .Robot_Formation_1.VFORCE_1_force_graphic_1  &
   adams_id = 854  &
   force_element_name = .Robot_Formation_1.VFORCE_1  &
   applied_at_marker_name = .Robot_Formation_1.pin_li_po.FMARKER_454
!
geometry create shape force  &
   force_name = .Robot_Formation_1.VFORCE_2_force_graphic_1  &
   adams_id = 855  &
   force_element_name = .Robot_Formation_1.VFORCE_2  &
   applied_at_marker_name = .Robot_Formation_1.pin_li_po_2.FMARKER_457
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_721  &
   adams_id = 721  &
   contact_element_name = .Robot_Formation_1.CONTACT_1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_721  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_722  &
   adams_id = 722  &
   contact_element_name = .Robot_Formation_1.CONTACT_2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_722  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_723  &
   adams_id = 723  &
   contact_element_name = .Robot_Formation_1.CONTACT_3  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_723  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_724  &
   adams_id = 724  &
   contact_element_name = .Robot_Formation_1.CONTACT_4  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_724  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_725  &
   adams_id = 725  &
   contact_element_name = .Robot_Formation_1.CONTACT_5  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_725  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_726  &
   adams_id = 726  &
   contact_element_name = .Robot_Formation_1.CONTACT_6  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_726  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_727  &
   adams_id = 727  &
   contact_element_name = .Robot_Formation_1.CONTACT_7  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_727  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_728  &
   adams_id = 728  &
   contact_element_name = .Robot_Formation_1.CONTACT_8  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_728  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_729  &
   adams_id = 729  &
   contact_element_name = .Robot_Formation_1.CONTACT_9  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_729  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_732  &
   adams_id = 732  &
   contact_element_name = .Robot_Formation_1.CONTACT_10  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_732  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_733  &
   adams_id = 733  &
   contact_element_name = .Robot_Formation_1.CONTACT_11  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_733  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_734  &
   adams_id = 734  &
   contact_element_name = .Robot_Formation_1.CONTACT_12  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_734  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_735  &
   adams_id = 735  &
   contact_element_name = .Robot_Formation_1.CONTACT_13  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_735  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_736  &
   adams_id = 736  &
   contact_element_name = .Robot_Formation_1.CONTACT_14  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_736  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_737  &
   adams_id = 737  &
   contact_element_name = .Robot_Formation_1.CONTACT_15  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_737  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_738  &
   adams_id = 738  &
   contact_element_name = .Robot_Formation_1.CONTACT_16  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_738  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_739  &
   adams_id = 739  &
   contact_element_name = .Robot_Formation_1.CONTACT_17  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_739  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_740  &
   adams_id = 740  &
   contact_element_name = .Robot_Formation_1.CONTACT_18  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_740  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_743  &
   adams_id = 743  &
   contact_element_name = .Robot_Formation_1.CONTACT_19  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_743  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_744  &
   adams_id = 744  &
   contact_element_name = .Robot_Formation_1.CONTACT_20  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_744  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_745  &
   adams_id = 745  &
   contact_element_name = .Robot_Formation_1.CONTACT_21  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_745  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_746  &
   adams_id = 746  &
   contact_element_name = .Robot_Formation_1.CONTACT_22  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_746  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_747  &
   adams_id = 747  &
   contact_element_name = .Robot_Formation_1.CONTACT_23  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_747  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_748  &
   adams_id = 748  &
   contact_element_name = .Robot_Formation_1.CONTACT_24  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_748  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_749  &
   adams_id = 749  &
   contact_element_name = .Robot_Formation_1.CONTACT_25  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_749  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_750  &
   adams_id = 750  &
   contact_element_name = .Robot_Formation_1.CONTACT_26  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_750  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_751  &
   adams_id = 751  &
   contact_element_name = .Robot_Formation_1.CONTACT_27  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_751  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_754  &
   adams_id = 754  &
   contact_element_name = .Robot_Formation_1.CONTACT_28  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_754  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_755  &
   adams_id = 755  &
   contact_element_name = .Robot_Formation_1.CONTACT_29  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_755  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_756  &
   adams_id = 756  &
   contact_element_name = .Robot_Formation_1.CONTACT_30  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_756  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_757  &
   adams_id = 757  &
   contact_element_name = .Robot_Formation_1.CONTACT_31  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_757  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_758  &
   adams_id = 758  &
   contact_element_name = .Robot_Formation_1.CONTACT_32  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_758  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_759  &
   adams_id = 759  &
   contact_element_name = .Robot_Formation_1.CONTACT_33  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_759  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_760  &
   adams_id = 760  &
   contact_element_name = .Robot_Formation_1.CONTACT_34  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_760  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_761  &
   adams_id = 761  &
   contact_element_name = .Robot_Formation_1.CONTACT_35  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_761  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_762  &
   adams_id = 762  &
   contact_element_name = .Robot_Formation_1.CONTACT_36  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_762  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_765  &
   adams_id = 765  &
   contact_element_name = .Robot_Formation_1.CONTACT_37  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_765  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_766  &
   adams_id = 766  &
   contact_element_name = .Robot_Formation_1.CONTACT_38  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_766  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_767  &
   adams_id = 767  &
   contact_element_name = .Robot_Formation_1.CONTACT_39  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_767  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_768  &
   adams_id = 768  &
   contact_element_name = .Robot_Formation_1.CONTACT_40  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_768  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_769  &
   adams_id = 769  &
   contact_element_name = .Robot_Formation_1.CONTACT_41  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_769  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_770  &
   adams_id = 770  &
   contact_element_name = .Robot_Formation_1.CONTACT_42  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_770  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_771  &
   adams_id = 771  &
   contact_element_name = .Robot_Formation_1.CONTACT_43  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_771  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_772  &
   adams_id = 772  &
   contact_element_name = .Robot_Formation_1.CONTACT_44  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_772  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_773  &
   adams_id = 773  &
   contact_element_name = .Robot_Formation_1.CONTACT_45  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_773  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_776  &
   adams_id = 776  &
   contact_element_name = .Robot_Formation_1.CONTACT_46  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_776  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_777  &
   adams_id = 777  &
   contact_element_name = .Robot_Formation_1.CONTACT_47  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_777  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_778  &
   adams_id = 778  &
   contact_element_name = .Robot_Formation_1.CONTACT_48  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_778  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_779  &
   adams_id = 779  &
   contact_element_name = .Robot_Formation_1.CONTACT_49  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_779  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_780  &
   adams_id = 780  &
   contact_element_name = .Robot_Formation_1.CONTACT_50  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_780  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_781  &
   adams_id = 781  &
   contact_element_name = .Robot_Formation_1.CONTACT_51  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_781  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_782  &
   adams_id = 782  &
   contact_element_name = .Robot_Formation_1.CONTACT_52  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_782  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_783  &
   adams_id = 783  &
   contact_element_name = .Robot_Formation_1.CONTACT_53  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_783  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_784  &
   adams_id = 784  &
   contact_element_name = .Robot_Formation_1.CONTACT_54  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_784  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_787  &
   adams_id = 787  &
   contact_element_name = .Robot_Formation_1.CONTACT_55  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_787  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_788  &
   adams_id = 788  &
   contact_element_name = .Robot_Formation_1.CONTACT_56  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_788  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_789  &
   adams_id = 789  &
   contact_element_name = .Robot_Formation_1.CONTACT_57  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_789  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_790  &
   adams_id = 790  &
   contact_element_name = .Robot_Formation_1.CONTACT_58  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_790  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_791  &
   adams_id = 791  &
   contact_element_name = .Robot_Formation_1.CONTACT_59  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_791  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_792  &
   adams_id = 792  &
   contact_element_name = .Robot_Formation_1.CONTACT_60  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_792  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_793  &
   adams_id = 793  &
   contact_element_name = .Robot_Formation_1.CONTACT_61  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_793  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_794  &
   adams_id = 794  &
   contact_element_name = .Robot_Formation_1.CONTACT_62  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_794  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_795  &
   adams_id = 795  &
   contact_element_name = .Robot_Formation_1.CONTACT_63  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_795  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_798  &
   adams_id = 798  &
   contact_element_name = .Robot_Formation_1.CONTACT_64  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_798  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_799  &
   adams_id = 799  &
   contact_element_name = .Robot_Formation_1.CONTACT_65  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_799  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_800  &
   adams_id = 800  &
   contact_element_name = .Robot_Formation_1.CONTACT_66  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_800  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_801  &
   adams_id = 801  &
   contact_element_name = .Robot_Formation_1.CONTACT_67  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_801  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_802  &
   adams_id = 802  &
   contact_element_name = .Robot_Formation_1.CONTACT_68  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_802  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_803  &
   adams_id = 803  &
   contact_element_name = .Robot_Formation_1.CONTACT_69  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_803  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_804  &
   adams_id = 804  &
   contact_element_name = .Robot_Formation_1.CONTACT_70  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_804  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_805  &
   adams_id = 805  &
   contact_element_name = .Robot_Formation_1.CONTACT_71  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_805  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_806  &
   adams_id = 806  &
   contact_element_name = .Robot_Formation_1.CONTACT_72  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_806  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_809  &
   adams_id = 809  &
   contact_element_name = .Robot_Formation_1.CONTACT_73  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_809  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_810  &
   adams_id = 810  &
   contact_element_name = .Robot_Formation_1.CONTACT_74  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_810  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_811  &
   adams_id = 811  &
   contact_element_name = .Robot_Formation_1.CONTACT_75  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_811  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_812  &
   adams_id = 812  &
   contact_element_name = .Robot_Formation_1.CONTACT_76  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_812  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_813  &
   adams_id = 813  &
   contact_element_name = .Robot_Formation_1.CONTACT_77  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_813  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_814  &
   adams_id = 814  &
   contact_element_name = .Robot_Formation_1.CONTACT_78  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_814  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_815  &
   adams_id = 815  &
   contact_element_name = .Robot_Formation_1.CONTACT_79  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_815  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_816  &
   adams_id = 816  &
   contact_element_name = .Robot_Formation_1.CONTACT_80  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_816  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_817  &
   adams_id = 817  &
   contact_element_name = .Robot_Formation_1.CONTACT_81  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_817  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_820  &
   adams_id = 820  &
   contact_element_name = .Robot_Formation_1.CONTACT_82  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_820  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_821  &
   adams_id = 821  &
   contact_element_name = .Robot_Formation_1.CONTACT_83  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_821  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_822  &
   adams_id = 822  &
   contact_element_name = .Robot_Formation_1.CONTACT_84  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_822  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_823  &
   adams_id = 823  &
   contact_element_name = .Robot_Formation_1.CONTACT_85  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_823  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_824  &
   adams_id = 824  &
   contact_element_name = .Robot_Formation_1.CONTACT_86  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_824  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_825  &
   adams_id = 825  &
   contact_element_name = .Robot_Formation_1.CONTACT_87  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_825  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_826  &
   adams_id = 826  &
   contact_element_name = .Robot_Formation_1.CONTACT_88  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_826  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_827  &
   adams_id = 827  &
   contact_element_name = .Robot_Formation_1.CONTACT_89  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_827  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_828  &
   adams_id = 828  &
   contact_element_name = .Robot_Formation_1.CONTACT_90  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_828  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_829  &
   adams_id = 829  &
   contact_element_name = .Robot_Formation_1.CONTACT_91  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_829  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_830  &
   adams_id = 830  &
   contact_element_name = .Robot_Formation_1.CONTACT_92  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_830  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_831  &
   adams_id = 831  &
   contact_element_name = .Robot_Formation_1.CONTACT_93  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_831  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_832  &
   adams_id = 832  &
   contact_element_name = .Robot_Formation_1.CONTACT_94  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_832  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_833  &
   adams_id = 833  &
   contact_element_name = .Robot_Formation_1.CONTACT_95  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_833  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_834  &
   adams_id = 834  &
   contact_element_name = .Robot_Formation_1.CONTACT_96  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_834  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_835  &
   adams_id = 835  &
   contact_element_name = .Robot_Formation_1.CONTACT_97  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_835  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_836  &
   adams_id = 836  &
   contact_element_name = .Robot_Formation_1.CONTACT_98  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_836  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_837  &
   adams_id = 837  &
   contact_element_name = .Robot_Formation_1.CONTACT_99  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_837  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_838  &
   adams_id = 838  &
   contact_element_name = .Robot_Formation_1.CONTACT_100  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_838  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_839  &
   adams_id = 839  &
   contact_element_name = .Robot_Formation_1.CONTACT_101  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_839  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_840  &
   adams_id = 840  &
   contact_element_name = .Robot_Formation_1.CONTACT_102  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_840  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_841  &
   adams_id = 841  &
   contact_element_name = .Robot_Formation_1.CONTACT_103  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_841  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_842  &
   adams_id = 842  &
   contact_element_name = .Robot_Formation_1.CONTACT_104  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_842  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_843  &
   adams_id = 843  &
   contact_element_name = .Robot_Formation_1.CONTACT_105  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_843  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_844  &
   adams_id = 844  &
   contact_element_name = .Robot_Formation_1.CONTACT_106  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_844  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_845  &
   adams_id = 845  &
   contact_element_name = .Robot_Formation_1.CONTACT_107  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_845  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Robot_Formation_1.GCONTACT_846  &
   adams_id = 846  &
   contact_element_name = .Robot_Formation_1.CONTACT_108  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Robot_Formation_1.GCONTACT_846  &
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
   model_name = Robot_Formation_1  &
   integrator_type = wstiff  &
   formulation = si1  &
   scale = 1.0, 1.0, 1.0
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Robot_Formation_1.layout_config  &
   integer_value = -559714432
!
variable create  &
   variable_name = .Robot_Formation_1._model  &
   string_value = ".Robot_Formation_1"
!
!------------------------- Groups Owned By This Model -------------------------!
!
!
group create  &
   group_name = .Robot_Formation_1.Screws_R2
!
group create  &
   group_name = .Robot_Formation_1.Screws_R1
!
!--------------------------- Add Objects To Groups ----------------------------!
!
!
group modify  &
   group_name = .Robot_Formation_1.Screws_R2  &
   objects_in_group = .Robot_Formation_1.hex_nut_gradec_iso_10,  &
      .Robot_Formation_1.hex_nut_gradec_iso_11,  &
      .Robot_Formation_1.hex_nut_gradec_iso_12,  &
      .Robot_Formation_1.hex_nut_gradec_iso_13,  &
      .Robot_Formation_1.hex_nut_gradec_iso_14,  &
      .Robot_Formation_1.hex_nut_gradec_iso_15,  &
      .Robot_Formation_1.hex_nut_gradec_iso_16,  &
      .Robot_Formation_1.hex_nut_gradec_iso_17,  &
      .Robot_Formation_1.hex_nut_gradec_iso_18,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_7,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_8,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_9,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_10,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_11,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_12,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_10,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_11,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_12,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_13,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_14,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_15,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_16,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_17,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_18,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_8,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_9,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_10,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_11,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_12,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_13,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_4,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_5,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_6
!
group modify  &
   group_name = .Robot_Formation_1.Screws_R1  &
   objects_in_group = .Robot_Formation_1.hex_nut_gradec_iso,  &
      .Robot_Formation_1.hex_nut_gradec_iso_2,  &
      .Robot_Formation_1.hex_nut_gradec_iso_3,  &
      .Robot_Formation_1.hex_nut_gradec_iso_4,  &
      .Robot_Formation_1.hex_nut_gradec_iso_5,  &
      .Robot_Formation_1.hex_nut_gradec_iso_6,  &
      .Robot_Formation_1.hex_nut_gradec_iso_7,  &
      .Robot_Formation_1.hex_nut_gradec_iso_8,  &
      .Robot_Formation_1.hex_nut_gradec_iso_9,  &
      .Robot_Formation_1.socket_head_cap_screw_iso,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_2,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_3,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_4,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_5,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_0_6,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_2,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_3,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_4,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_5,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_6,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_7,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_8,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_1_9,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_2,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_3,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_4,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_5,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_6,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_2_7,  &
      .Robot_Formation_1.socket_head_cap_screw_iso_3
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.X_1  &
   function = "DX(.Robot_Formation_1.khung_duoi_1.MARKER_2,.Robot_Formation_1.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.Y_1  &
   function = "DY(.Robot_Formation_1.khung_duoi_1.MARKER_2,.Robot_Formation_1.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.O_1  &
   function = "YAW(.Robot_Formation_1.khung_duoi_1.MARKER_2,.Robot_Formation_1.ground.MARKER_1) + PI"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.X_2  &
   function = "DX(.Robot_Formation_1.khung_duoi_1_2.MARKER_4,.Robot_Formation_1.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.Y_2  &
   function = "DY(.Robot_Formation_1.khung_duoi_1_2.MARKER_4,.Robot_Formation_1.ground.MARKER_1)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.O_2  &
   function = "YAW(.Robot_Formation_1.khung_duoi_1_2.MARKER_4,.Robot_Formation_1.ground.MARKER_1) + PI"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.W_11  &
   function = "WZ(.Robot_Formation_1.DC_12v_251rpm.MARKER_215,.Robot_Formation_1.Part3_banhxe.MARKER_214,.Robot_Formation_1.DC_12v_251rpm.MARKER_215)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.W_12  &
   function = "WZ(.Robot_Formation_1.DC_12v_251rpm_2.MARKER_213,.Robot_Formation_1.Part3_banhxe_2.MARKER_212,.Robot_Formation_1.DC_12v_251rpm_2.MARKER_213)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.W_13  &
   function = "WZ(.Robot_Formation_1.DC_12v_251rpm_3.MARKER_211,.Robot_Formation_1.Part3_banhxe_3.MARKER_210,.Robot_Formation_1.DC_12v_251rpm_3.MARKER_211)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.W_21  &
   function = "WZ(.Robot_Formation_1.DC_12v_251rpm_4.MARKER_221,.Robot_Formation_1.Part3_banhxe_4.MARKER_220,.Robot_Formation_1.DC_12v_251rpm_4.MARKER_221)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.W_22  &
   function = "WZ(.Robot_Formation_1.DC_12v_251rpm_5.MARKER_219,.Robot_Formation_1.Part3_banhxe_5.MARKER_218,.Robot_Formation_1.DC_12v_251rpm_5.MARKER_219)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.W_23  &
   function = "WZ(.Robot_Formation_1.DC_12v_251rpm_6.MARKER_217,.Robot_Formation_1.Part3_banhxe_6.MARKER_216,.Robot_Formation_1.DC_12v_251rpm_6.MARKER_217)"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.T_11  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.T_12  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.T_13  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.T_21  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.T_22  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.T_23  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.FD  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.FX_1  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.FY_1  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.FX_2  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Robot_Formation_1.FY_2  &
   function = "0"
!
force modify direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_13  &
   function = "-VARVAL(.Robot_Formation_1.T_13)"
!
force modify direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_12  &
   function = "-VARVAL(.Robot_Formation_1.T_12)"
!
force modify direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_11  &
   function = "-VARVAL(.Robot_Formation_1.T_11)"
!
force modify direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_23  &
   function = "-VARVAL(.Robot_Formation_1.T_23)"
!
force modify direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_22  &
   function = "-VARVAL(.Robot_Formation_1.T_22)"
!
force modify direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_21  &
   function = "-VARVAL(.Robot_Formation_1.T_21)"
!
force modify direct single_component_force  &
   single_component_force_name = .Robot_Formation_1.SFORCE_D  &
   function = "VARVAL(.Robot_Formation_1.FD)"
!
force modify direct force_vector  &
   force_vector_name = .Robot_Formation_1.VFORCE_1  &
   x_force_function = "VARVAL(.Robot_Formation_1.FX_1)"  &
   y_force_function = "VARVAL(.Robot_Formation_1.FY_1)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .Robot_Formation_1.VFORCE_2  &
   x_force_function = "VARVAL(.Robot_Formation_1.FX_2)"  &
   y_force_function = "VARVAL(.Robot_Formation_1.FY_2)"  &
   z_force_function = "0"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Robot_Formation_1.twoRobotsPlant_1_v2015
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape block  &
   block_name = .Robot_Formation_1.ground.BOX_360  &
   diag_corner_coords =   &
      (2000.0cm),  &
      (2000.0cm),  &
      (1.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm  &
   density = (3640.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_2  &
   density = (3640.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_3  &
   density = (3640.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Arduino_UNO  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_13  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_12  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_11  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.pin_li_po  &
   density = (3460.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.HC_06  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_4  &
   density = (3640.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_5  &
   density = (3640.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DC_12v_251rpm_6  &
   density = (3640.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.Arduino_UNO_2  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_23  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_22  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.DRIVER_cytron_21  &
   density = (2700.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.pin_li_po_2  &
   density = (3460.0(kg/meter**3))
!
part modify rigid_body mass_properties  &
   part_name = .Robot_Formation_1.HC_06_2  &
   density = (2700.0(kg/meter**3))
!
material modify  &
   material_name = .Robot_Formation_1.aluminum  &
   density = (2740.0(kg/meter**3))  &
   youngs_modulus = (7.1705E+010(Newton/meter**2))
!
material modify  &
   material_name = .Robot_Formation_1.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.SFORCE_13.i)
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.SFORCE_2_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.SFORCE_12.i)
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.SFORCE_3_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.SFORCE_11.i)
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.SFORCE_4_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.SFORCE_23.i)
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.SFORCE_5_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.SFORCE_22.i)
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.SFORCE_6_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.SFORCE_21.i)
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.SFORCE_7_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.SFORCE_D.i)
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.VFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.VFORCE_1.j)
!
geometry modify shape force  &
   force_name = .Robot_Formation_1.VFORCE_2_force_graphic_1  &
   applied_at_marker_name = (.Robot_Formation_1.VFORCE_2.j)
!
model display  &
   model_name = Robot_Formation_1
