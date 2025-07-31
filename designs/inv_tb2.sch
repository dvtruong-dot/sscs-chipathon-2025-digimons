v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 530 -260 530 -230 {lab=VDD}
N 530 -170 530 -140 {lab=GND}
N 600 -170 600 -140 {lab=GND}
N 990 -270 1020 -270 {lab=VDD}
N 600 -270 600 -230 {lab=in}
N 600 -270 690 -270 {lab=in}
N 990 -230 1000 -230 {lab=GND}
N 1000 -230 1000 -200 {lab=GND}
N 990 -250 1020 -250 {lab=out}
N 1020 -250 1100 -250 {lab=out}
N 690 -270 760 -270 {lab=in}
N 800 -310 990 -270 {lab=VDD}
N 800 -230 990 -230 {lab=GND}
N 870 -270 990 -250 {lab=out}
C {title.sym} 20 -20 0 0 {name=l1 author="Jojo"}
C {inv.sym} 890 -120 0 0 {name=x1_inv}
C {vsource.sym} 530 -200 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 600 -200 0 0 {name=VIN value=3.3 savecurrent=false}
C {vdd.sym} 530 -260 0 0 {name=l2 lab=VDD}
C {vdd.sym} 1020 -270 0 0 {name=l3 lab=VDD}
C {gnd.sym} 530 -140 0 0 {name=l4 lab=GND}
C {gnd.sym} 600 -140 0 0 {name=l5 lab=GND}
C {noconn.sym} 1100 -250 0 1 {name=l6}
C {gnd.sym} 1000 -200 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 650 -270 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 1080 -250 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 0 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 10 -980 0 0 {name=NGSPICE only_toplevel=true
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
C {launcher.sym} 540 -70 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"  }
