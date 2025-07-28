v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 750 -380 750 -310 {lab=VDD}
N 750 -250 750 -200 {lab=GND}
N 930 -320 930 -270 {lab=GND}
N 1050 -400 1180 -400 {lab=in0}
N 1250 -240 1250 -150 {lab=GND}
N 1250 -510 1250 -450 {lab=VDD}
N 1325 -350 1440 -350 {lab=out}
N 1100 -110 1100 -60 {lab=GND}
N 1100 -210 1100 -170 {lab=in2}
N 1100 -300 1180 -300 {lab=in2}
N 1100 -300 1100 -210 {lab=in2}
N 1010 -250 1010 -200 {lab=GND}
N 1010 -350 1010 -310 {lab=in1}
N 930 -400 1050 -400 {lab=in0}
N 930 -400 930 -380 {lab=in0}
N 1010 -350 1180 -350 {lab=in1}
C {3_input_and.sym} 1060 -110 0 0 {name=x1}
C {devices/title.sym} 160 20 0 0 {name=l1 author="Derek Truong"}
C {devices/code_shown.sym} 40 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -130 -840 0 0 {name=NGSPICE only_toplevel=true
value=" 
.control
save all

** Define input signal
let fsig = 1k
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

** Define transient params
let tstop = 2*tper
let tstep = 0.001*tper

** Set Sources
alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

** Simulations
op
dc vin 0 3.3 0.01
tran $&tstep $&tstop


** Plots
setplot dc1
let vout = v(out)
plot vout

setplot tran1
let vout = v(out)
let vin = v(in)
let ivdd = -v1#branch*1e4
plot vout vin ivdd 

setplot op1
write inv_tb .raw
.endc
"}
C {devices/vsource.sym} 750 -280 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/vsource.sym} 930 -350 0 0 {name=VIN value=3.3 savecurrent=false}
C {devices/vdd.sym} 750 -380 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} 1250 -510 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 750 -200 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 930 -270 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1250 -150 0 0 {name=l6 lab=GND}
C {devices/noconn.sym} 1440 -350 2 0 {name=l7}
C {devices/lab_wire.sym} 1120 -400 0 0 {name=p1 sig_type=std_logic lab=in0
}
C {devices/lab_wire.sym} 1390 -350 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/vsource.sym} 1100 -140 0 0 {name=VIN1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 1100 -60 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 1150 -300 0 0 {name=p3 sig_type=std_logic lab=in2}
C {devices/vsource.sym} 1010 -280 0 0 {name=VIN2 value=3.3 savecurrent=false}
C {devices/gnd.sym} 1010 -200 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 1050 -350 0 0 {name=p4 sig_type=std_logic lab=in1
}
