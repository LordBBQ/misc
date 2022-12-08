G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S100 T0; set extruder temp 
M104 S100 T1; set extruder temp
M400; Clear buffer
M104 S[first_layer_temperature] T0; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] T0; wait for extruder temp
G28 ; home all
G29; ABL
M400; Clear buffer
M355 S1;
M400;
G90 ; use absolute coordinates
;
;Run prime script without restore

M400; Clear buffer
M211 S0; Disable soft endstops
M400; Clear buffer
G91; Relative movement
M400; Clear buffer
G1 Z2 F2000; Lift Z 2mm
M400;
G90; Absolute movement;
M400;Clear buffer
G0 Y-14 F5400; Move to Y
M400;
G0 Z8 F2000; Move to Z
M400;
G0 X163 F5400; Move to X
M400;Clear buffer
G91; Relative positioning
G1 E40 F120; Extrude
M400; Clear buffer
G90; Absolute;
G1 X200 F5400; Wipe
M400;Clear buffer
G1 X163 F5400; Wipe
M400; clear buffer
G1 X200 F5400; Wipe
M400;Clear buffer
G1 X163 F5400; Wipe
M400; clear buffer

G91; Relative movement
M400; Clear buffer
G1 Z2 F2000; Lift Z 2mm
M400;
G90; Absolute movement;
M400;Clear buffer
G1 X30 F5400;
M400; Clear buffer
M400; Clear buffer
M211 S1; enable soft endstops
M400; Clear buffer
G90; Absolute positioning
M400;
G92 E0.0
M400;

