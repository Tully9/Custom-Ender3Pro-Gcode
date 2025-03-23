; Ender 3 Custom Start G-code
;{material_print_temperature} {material_bed_temperature}
M190 S60 ; heat bed and wait
M117 Pre-heating the extruder!
M104 S160; start warming extruder to 160
G28 ; BLTouch home XYZ axis
G29 ; BLTouch do full bed level
G1 X0 Y0 F2000 ; move to X0 Y0
M109 S{material_print_temperature} T0 ; wait for nozzle to reach temp
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
