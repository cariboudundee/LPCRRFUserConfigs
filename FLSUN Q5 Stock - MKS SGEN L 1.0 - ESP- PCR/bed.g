; bed.g
; called to perform automatic delta calibration via G32
;
; generated by RepRapFirmware Configuration Tool v3.1.4-LPC-5 on Fri Sep 25 2020 19:56:42 GMT+0200 (Mitteleuropäische Sommerzeit)
M561 ; clear any bed transform
; Probe the bed at 12 peripheral and 3 halfway points, and perform 6-factor auto compensation
; Before running this, you should have set up your Z-probe trigger height to suit your build, in the G31 command in config.g.
G30 P0 X0 Y99.9 H0 Z-99999
G30 P1 X49.95 Y86.52 H0 Z-99999
G30 P2 X86.52 Y49.95 H0 Z-99999
G30 P3 X99.9 Y0 H0 Z-99999
G30 P4 X86.52 Y-49.95 H0 Z-99999
G30 P5 X49.95 Y-86.52 H0 Z-99999
G30 P6 X0 Y-99.9 H0 Z-99999
G30 P7 X-49.95 Y-86.52 H0 Z-99999
G30 P8 X-86.52 Y-49.95 H0 Z-99999
G30 P9 X-99.9 Y0 H0 Z-99999
G30 P10 X-86.52 Y49.95 H0 Z-99999
G30 P11 X-49.95 Y86.52 H0 Z-99999
G30 P12 X0 Y49.9 H0 Z-99999
G30 P13 X43.21 Y-24.95 H0 Z-99999
G30 P14 X-43.21 Y-24.95 H0 Z-99999
G30 P15 X0 Y0 H0 Z-99999 S6
; Use S-1 for measurements only, without calculations. Use S4 for endstop heights and Z-height only. Use S6 for full 6 factors
; If your Z probe has significantly different trigger heights depending on XY position, adjust the H parameters in the G30 commands accordingly. The value of each H parameter should be (trigger height at that XY position) - (trigger height at centre of bed)


