v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 650 -420 650 -350 {lab=VDD}
N 650 -290 650 -240 {lab=GND}
N 760 -290 760 -240 {lab=GND}
N 760 -390 760 -350 {lab=in}
N 760 -390 890 -390 {lab=in}
N 960 -330 960 -240 {lab=GND}
N 960 -510 960 -450 {lab=VDD}
N 1025 -390 1140 -390 {lab=out}
C {devices/title.sym} 80 50 0 0 {name=l1 author="Derek Truong"}
C {devices/vsource.sym} 650 -320 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/vsource.sym} 760 -320 0 0 {name=VIN value=3.3 savecurrent=false}
C {devices/vdd.sym} 650 -420 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} 960 -510 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 650 -240 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 760 -240 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 960 -240 0 0 {name=l6 lab=GND}
C {devices/noconn.sym} 1140 -390 2 0 {name=l7}
C {devices/lab_wire.sym} 830 -390 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 1090 -390 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 40 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 20 -700 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

** Define input signal
let fsig = 1k
let tperiod = 1/fsig
let tfr = 0.01*tperiod
let ton = 0.5*tperiod-2*tfr

** Define transient params
let tstop = 2*tper
let tstep = 0.001*tper

** Set sources
alter @VIN[DC] = 0.0
** PULSE = [ start amplitude delay rise-fall-time ton tperiod ]
alter @VIN[PULSE] = [ 0 3.3 0 $&tfr $&ton $&tperiod 0 ]

** Simulations
op
dc vin 0 3.3 0.01
tran $&tstep $&tstop
 
write test_inv_tb.raw
.endc
"}
C {sscs-chipathon-2025-Digimon/test-inv.sym} 990 -230 0 0 {name=x-inv1}
