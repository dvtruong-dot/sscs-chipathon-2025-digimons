v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 -1000 220 -270 {lab=s1}
N 220 -990 280 -990 {lab=s1}
N 280 -990 280 -980 {lab=s1}
N 330 -990 420 -990 {lab=s0}
N 420 -990 420 -980 {lab=s0}
N 420 -900 420 -420 {lab=#net1}
N 110 -850 640 -910 {lab=d0}
N 280 -850 640 -880 {lab=#net2}
N 420 -850 640 -850 {lab=#net1}
N 110 -660 640 -700 {lab=d1}
N 280 -660 640 -670 {lab=#net2}
N 330 -640 640 -640 {lab=s0}
N 110 -450 640 -490 {lab=d2}
N 220 -430 640 -460 {lab=s1}
N 420 -420 640 -430 {lab=#net1}
N 220 -270 640 -270 {lab=s1}
N 280 -900 280 -850 {lab=#net2}
N 280 -850 280 -660 {lab=#net2}
N 140 -290 640 -300 {lab=d3}
N 330 -990 330 -240 {lab=s0}
N 330 -240 640 -240 {lab=s0}
N 330 -1000 330 -990 {lab=s0}
N 880 -980 880 -960 {lab=vdd}
N 690 -960 880 -960 {lab=vdd}
N 690 -960 690 -940 {lab=vdd}
N 880 -960 880 -770 {lab=vdd}
N 690 -770 880 -770 {lab=vdd}
N 690 -770 690 -730 {lab=vdd}
N 880 -770 880 -570 {lab=vdd}
N 690 -570 880 -570 {lab=vdd}
N 690 -570 690 -520 {lab=vdd}
N 880 -570 880 -370 {lab=vdd}
N 690 -360 880 -370 {lab=vdd}
N 690 -360 690 -330 {lab=vdd}
N 880 -960 1250 -645 {lab=vdd}
N 840 -160 840 -90 {lab=vss}
N 690 -160 840 -160 {lab=vss}
N 690 -210 690 -160 {lab=vss}
N 840 -390 840 -160 {lab=vss}
N 690 -390 840 -390 {lab=vss}
N 690 -400 690 -390 {lab=vss}
N 840 -590 840 -390 {lab=vss}
N 690 -590 840 -590 {lab=vss}
N 690 -610 690 -590 {lab=vss}
N 840 -800 840 -590 {lab=vss}
N 690 -800 840 -800 {lab=vss}
N 690 -820 690 -800 {lab=vss}
N 840 -160 1250 -540 {lab=vss}
N 740 -880 1190 -630 {lab=#net3}
N 740 -670 1190 -605 {lab=#net4}
N 740 -460 1190 -580 {lab=#net5}
N 740 -270 1190 -555 {lab=#net6}
N 1315 -590 1410 -590 {lab=vo}
C {title.sym} 40 50 0 0 {name=l1 author="The Digimons"}
C {ipin.sym} 110 -850 0 0 {name=p1 lab=d0}
C {ipin.sym} 110 -660 0 0 {name=p2 lab=d1}
C {ipin.sym} 110 -450 0 0 {name=p3 lab=d2}
C {ipin.sym} 140 -290 0 0 {name=p4 lab=d3}
C {ipin.sym} 220 -1000 1 0 {name=p5 lab=s1}
C {ipin.sym} 330 -1000 1 0 {name=p6 lab=s0}
C {3_input_and.sym} 770 -720 0 0 {name=x1}
C {3_input_and.sym} 770 -510 0 0 {name=x2}
C {3_input_and.sym} 770 -300 0 0 {name=x3}
C {3_input_and.sym} 770 -110 0 0 {name=x4}
C {4_input_or.sym} 1180 -420 0 0 {name=x5}
C {inv.sym} 150 -940 1 0 {name=x6}
C {inv.sym} 290 -940 1 0 {name=x7}
C {iopin.sym} 880 -980 3 0 {name=p7 lab=vdd}
C {iopin.sym} 840 -90 1 0 {name=p8 lab=vss}
C {opin.sym} 1410 -590 0 0 {name=p9 lab=vo}
