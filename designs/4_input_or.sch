v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -590 380 -590 {lab=vin_0}
N 380 -650 380 -590 {lab=vin_0}
N 380 -650 730 -650 {lab=vin_0}
N 380 -590 380 -300 {lab=vin_0}
N 240 -300 380 -300 {lab=vin_0}
N 240 -300 240 -220 {lab=vin_0}
N 240 -220 280 -220 {lab=vin_0}
N 270 -530 660 -530 {lab=vin_1}
N 660 -560 660 -530 {lab=vin_1}
N 660 -560 730 -560 {lab=vin_1}
N 400 -530 400 -220 {lab=vin_1}
N 400 -220 430 -220 {lab=vin_1}
N 270 -460 660 -460 {lab=vin_2}
N 660 -470 660 -460 {lab=vin_2}
N 660 -470 730 -470 {lab=vin_2}
N 550 -460 550 -220 {lab=vin_2}
N 550 -220 590 -220 {lab=vin_2}
N 270 -400 660 -400 {lab=vin_3}
N 660 -400 660 -380 {lab=vin_3}
N 660 -380 730 -380 {lab=vin_3}
N 690 -380 690 -220 {lab=vin_3}
N 690 -220 730 -220 {lab=vin_3}
N 770 -620 770 -590 {lab=#net1}
N 770 -530 770 -500 {lab=#net2}
N 770 -440 770 -410 {lab=#net3}
N 770 -780 770 -680 {lab=vdd}
N 770 -720 840 -720 {lab=vdd}
N 840 -720 840 -650 {lab=vdd}
N 770 -650 840 -650 {lab=vdd}
N 840 -650 840 -560 {lab=vdd}
N 770 -560 840 -560 {lab=vdd}
N 840 -560 840 -470 {lab=vdd}
N 770 -470 840 -470 {lab=vdd}
N 840 -470 840 -380 {lab=vdd}
N 770 -380 840 -380 {lab=vdd}
N 320 -190 320 -140 {lab=vss}
N 320 -140 770 -140 {lab=vss}
N 770 -140 770 -100 {lab=vss}
N 770 -190 770 -140 {lab=vss}
N 630 -190 630 -140 {lab=vss}
N 470 -190 470 -140 {lab=vss}
N 320 -220 370 -220 {lab=vss}
N 370 -220 370 -170 {lab=vss}
N 320 -170 370 -170 {lab=vss}
N 770 -220 820 -220 {lab=vss}
N 820 -220 820 -140 {lab=vss}
N 770 -140 820 -140 {lab=vss}
N 630 -220 660 -220 {lab=vss}
N 630 -140 660 -220 {lab=vss}
N 470 -220 500 -220 {lab=vss}
N 500 -220 500 -140 {lab=vss}
N 770 -350 770 -310 {lab=vout}
N 770 -310 770 -300 {lab=vout}
N 770 -300 1010 -300 {lab=vout}
N 770 -300 770 -250 {lab=vout}
N 630 -300 630 -250 {lab=vout}
N 630 -300 770 -300 {lab=vout}
N 470 -300 470 -250 {lab=vout}
N 470 -300 630 -300 {lab=vout}
N 320 -250 470 -300 {lab=vout}
C {title.sym} 40 0 0 0 {name=l1 author="The Digimons"}
C {symbols/pfet_03v3.sym} 750 -650 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 750 -220 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 750 -560 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 750 -470 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 750 -380 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 610 -220 0 0 {name=M6
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 450 -220 0 0 {name=M7
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 300 -220 0 0 {name=M8
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 770 -780 3 0 {name=p1 lab=vdd}
C {iopin.sym} 770 -100 1 0 {name=p2 lab=vss}
C {ipin.sym} 270 -590 0 0 {name=p3 lab=vin_0}
C {ipin.sym} 270 -530 0 0 {name=p4 lab=vin_1}
C {ipin.sym} 270 -460 0 0 {name=p5 lab=vin_2}
C {ipin.sym} 270 -400 0 0 {name=p6 lab=vin_3}
C {opin.sym} 1010 -300 0 0 {name=p7 lab=vout}
