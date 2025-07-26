v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 -470 180 -470 {lab=Vi_1}
N 180 -630 180 -470 {lab=Vi_1}
N 180 -630 210 -630 {lab=Vi_1}
N 50 -350 320 -350 {lab=Vi_2}
N 320 -630 320 -350 {lab=Vi_2}
N 320 -630 370 -630 {lab=Vi_2}
N 470 -620 520 -620 {lab=Vi_3}
N 470 -620 470 -260 {lab=Vi_3}
N 50 -260 470 -260 {lab=Vi_3}
N 250 -700 250 -660 {lab=vdd}
N 250 -700 540 -700 {lab=vdd}
N 540 -790 540 -700 {lab=vdd}
N 560 -700 560 -650 {lab=vdd}
N 540 -700 560 -700 {lab=vdd}
N 410 -700 410 -660 {lab=vdd}
N 250 -600 250 -560 {lab=#net1}
N 250 -560 560 -560 {lab=#net1}
N 560 -560 560 -490 {lab=#net1}
N 560 -590 560 -560 {lab=#net1}
N 410 -600 410 -560 {lab=#net1}
N 180 -470 520 -470 {lab=Vi_1}
N 520 -470 520 -430 {lab=Vi_1}
N 320 -350 510 -350 {lab=Vi_2}
N 510 -350 520 -350 {lab=Vi_2}
N 520 -350 520 -330 {lab=Vi_2}
N 470 -260 470 -230 {lab=Vi_3}
N 470 -230 520 -240 {lab=Vi_3}
N 560 -210 560 -80 {lab=vss}
N 560 -300 560 -270 {lab=#net2}
N 560 -400 560 -360 {lab=#net3}
N 560 -490 560 -460 {lab=#net1}
N 560 -500 790 -500 {lab=#net1}
N 560 -160 880 -160 {lab=vss}
N 880 -300 880 -160 {lab=vss}
N 560 -700 890 -700 {lab=vdd}
N 890 -700 890 -650 {lab=vdd}
N 790 -620 790 -500 {lab=#net1}
N 790 -620 850 -620 {lab=#net1}
N 790 -500 790 -330 {lab=#net1}
N 790 -330 840 -330 {lab=#net1}
N 890 -590 890 -490 {lab=Vo}
N 890 -490 1040 -490 {lab=Vo}
N 880 -360 890 -490 {lab=Vo}
C {devices/title.sym} 60 60 0 0 {name=l1 author="Derek Truong"}
C {symbols/pfet_03v3.sym} 230 -630 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 390 -630 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 540 -620 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 540 -430 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 540 -330 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 540 -240 0 0 {name=M6
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
C {devices/iopin.sym} 540 -790 3 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 560 -80 1 0 {name=p2 lab=vss}
C {devices/ipin.sym} 50 -470 0 0 {name=p3 lab=Vi_1}
C {devices/ipin.sym} 50 -350 0 0 {name=p4 lab=Vi_2}
C {devices/ipin.sym} 50 -260 0 0 {name=p5 lab=Vi_3}
C {symbols/pfet_03v3.sym} 870 -620 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 860 -330 0 0 {name=M8
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
C {devices/opin.sym} 1040 -490 0 0 {name=p6 lab=Vo}
