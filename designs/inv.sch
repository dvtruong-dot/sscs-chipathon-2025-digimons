v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 520 -480 520 -440 {lab=vdd}
N 320 -300 420 -300 {lab=vin}
N 420 -410 420 -300 {lab=vin}
N 420 -410 480 -410 {lab=vin}
N 420 -300 420 -200 {lab=vin}
N 420 -200 480 -200 {lab=vin}
N 520 -170 520 -110 {lab=vss}
N 520 -380 520 -230 {lab=xxx}
N 520 -300 730 -290 {lab=xxx}
C {title.sym} 80 70 0 0 {name=l1 author="The Digimons"}
C {symbols/pfet_03v3.sym} 500 -410 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 500 -200 0 0 {name=M2
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
C {iopin.sym} 520 -480 3 0 {name=p1 lab=vdd}
C {iopin.sym} 520 -110 1 0 {name=p2 lab=vss}
C {ipin.sym} 320 -300 0 0 {name=p3 lab=vin}
C {opin.sym} 730 -290 0 0 {name=p4 lab=vout}
