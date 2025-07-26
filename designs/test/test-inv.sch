v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Simple CMOS inverter} 350 -490 0 0 0.4 0.4 {}
N 460 -370 460 -320 {lab=vdd}
N 460 -260 460 -180 {lab=V_o}
N 460 -120 460 -70 {lab=vss}
N 360 -290 420 -290 {lab=V_i}
N 360 -290 360 -220 {lab=V_i}
N 330 -220 360 -220 {lab=V_i}
N 360 -150 420 -150 {lab=V_i}
N 360 -220 360 -150 {lab=V_i}
N 460 -220 590 -220 {lab=V_o}
N 460 -290 540 -290 {lab=vdd}
N 540 -350 540 -290 {lab=vdd}
N 460 -350 540 -350 {lab=vdd}
N 460 -150 530 -150 {lab=vss}
N 530 -150 530 -100 {lab=vss}
N 460 -100 530 -100 {lab=vss}
C {devices/title.sym} 100 60 0 0 {name=l1 author="Derek Truong"}
C {symbols/nfet_03v3.sym} 440 -150 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 440 -290 0 0 {name=M2
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
C {devices/iopin.sym} 460 -370 3 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 460 -70 1 0 {name=p2 lab=vss
}
C {devices/ipin.sym} 330 -220 0 0 {name=p3 lab=V_i}
C {devices/opin.sym} 590 -220 0 0 {name=p4 lab=V_o}
