v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 360 -1060 360 -1040 {lab=s1}
N 360 -1040 490 -1040 {lab=s1}
N 490 -1040 490 -1030 {lab=s1}
N 660 -1060 660 -1050 {lab=s0}
N 660 -1050 770 -1050 {lab=s0}
N 770 -1050 770 -1030 {lab=s0}
N 190 -860 960 -860 {lab=d0}
N 960 -880 1080 -880 {lab=d0}
N 960 -880 960 -860 {lab=d0}
N 490 -920 490 -670 {lab=#net1}
N 490 -850 1080 -850 {lab=#net1}
N 770 -920 770 -820 {lab=#net2}
N 770 -820 1080 -820 {lab=#net2}
N 1250 -1040 1280 -1040 {lab=vdd}
N 1250 -1040 1250 -290 {lab=vdd}
N 1130 -290 1250 -290 {lab=vdd}
N 1130 -290 1130 -250 {lab=vdd}
N 1130 -940 1250 -940 {lab=vdd}
N 1130 -940 1130 -910 {lab=vdd}
N 1130 -730 1250 -730 {lab=vdd}
N 1130 -730 1130 -710 {lab=vdd}
N 1130 -500 1250 -500 {lab=vdd}
N 1130 -500 1130 -480 {lab=vdd}
N 490 -670 1020 -670 {lab=#net1}
N 1020 -670 1020 -650 {lab=#net1}
N 1020 -650 1080 -650 {lab=#net1}
N 190 -690 1050 -690 {lab=d1}
N 1050 -690 1050 -680 {lab=d1}
N 1050 -680 1080 -680 {lab=d1}
N 660 -1050 660 -620 {lab=s0}
N 660 -620 1080 -620 {lab=s0}
N 190 -510 1010 -510 {lab=d2}
N 1010 -510 1010 -450 {lab=d2}
N 1010 -450 1080 -450 {lab=d2}
N 360 -1040 360 -420 {lab=s1}
N 360 -420 1080 -420 {lab=s1}
N 770 -820 770 -400 {lab=#net2}
N 770 -400 770 -390 {lab=#net2}
N 770 -390 1080 -390 {lab=#net2}
N 190 -310 1000 -310 {lab=d3}
N 1000 -310 1000 -230 {lab=d3}
N 1000 -230 1000 -220 {lab=d3}
N 1000 -220 1080 -220 {lab=d3}
N 360 -420 360 -190 {lab=s1}
N 360 -190 1080 -190 {lab=s1}
N 660 -160 1080 -160 {lab=s0}
N 660 -620 660 -160 {lab=s0}
N 1230 -40 1270 -40 {lab=vss}
N 1230 -770 1230 -40 {lab=vss}
N 1130 -770 1230 -770 {lab=vss}
N 1130 -790 1130 -770 {lab=vss}
N 1130 -560 1230 -560 {lab=vss}
N 1130 -590 1130 -560 {lab=vss}
N 1130 -330 1230 -330 {lab=vss}
N 1130 -360 1130 -330 {lab=vss}
N 1130 -100 1230 -100 {lab=vss}
N 1130 -130 1130 -100 {lab=vss}
N 1180 -190 1370 -190 {lab=#net3}
N 1370 -510 1370 -190 {lab=#net3}
N 1370 -510 1440 -505 {lab=#net3}
N 1180 -420 1320 -420 {lab=#net4}
N 1320 -530 1320 -420 {lab=#net4}
N 1320 -530 1440 -530 {lab=#net4}
N 1180 -650 1360 -650 {lab=#net5}
N 1360 -650 1360 -560 {lab=#net5}
N 1360 -560 1440 -555 {lab=#net5}
N 1180 -850 1400 -850 {lab=#net6}
N 1400 -850 1400 -570 {lab=#net6}
N 1400 -570 1440 -580 {lab=#net6}
N 1565 -540 1640 -540 {lab=vo}
C {title.sym} 40 50 0 0 {name=l1 author="The Digimons"}
C {ipin.sym} 190 -860 0 0 {name=p1 lab=d0}
C {ipin.sym} 190 -690 0 0 {name=p2 lab=d1}
C {ipin.sym} 190 -510 0 0 {name=p3 lab=d2}
C {ipin.sym} 190 -310 0 0 {name=p4 lab=d3}
C {ipin.sym} 360 -1060 1 0 {name=p5 lab=s1}
C {ipin.sym} 660 -1060 1 0 {name=p6 lab=s0}
C {inv.sym} 340 -900 1 0 {name=x1}
C {inv.sym} 620 -900 1 0 {name=x2}
C {3_input_and.sym} 1210 -690 0 0 {name=x3}
C {3_input_and.sym} 1210 -490 0 0 {name=x4}
C {3_input_and.sym} 1210 -260 0 0 {name=x5}
C {3_input_and.sym} 1210 -30 0 0 {name=x6}
C {4_input_or.sym} 1430 -370 0 0 {name=x7}
C {iopin.sym} 1280 -1040 0 0 {name=p7 lab=vdd}
C {iopin.sym} 1270 -40 0 0 {name=p8 lab=vss}
C {opin.sym} 1640 -540 0 0 {name=p9 lab=vo}
