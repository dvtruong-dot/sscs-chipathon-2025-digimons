v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 750 -380 750 -310 {lab=VDD}
N 750 -250 750 -200 {lab=GND}
N 930 -320 930 -270 {lab=GND}
N 1050 -400 1180 -400 {lab=in1}
N 1100 -110 1100 -60 {lab=GND}
N 1100 -210 1100 -170 {lab=in3}
N 1100 -300 1100 -210 {lab=in3}
N 1010 -250 1010 -200 {lab=GND}
N 1010 -350 1010 -310 {lab=in2}
N 930 -400 1050 -400 {lab=in1}
N 930 -400 930 -380 {lab=in1}
N 1480 -380 1600 -380 {lab=vout}
N 1010 -380 1010 -350 {lab=in2}
N 1010 -380 1180 -380 {lab=in2}
N 1100 -360 1180 -360 {lab=in3}
N 1100 -360 1100 -300 {lab=in3}
N 1480 -400 1530 -400 {lab=VDD}
N 1480 -360 1530 -360 {lab=GND}
C {devices/title.sym} 160 20 0 0 {name=l1 author="Derek Truong"}
C {devices/code_shown.sym} 40 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 750 -280 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/vsource.sym} 930 -350 0 0 {name=VIN1 
value=3.3
savecurrent=false}
C {devices/vdd.sym} 750 -380 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} 1530 -400 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 750 -200 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 930 -270 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1530 -360 0 0 {name=l6 lab=GND}
C {devices/noconn.sym} 1600 -380 2 0 {name=l7}
C {devices/lab_wire.sym} 1120 -400 0 0 {name=p1 sig_type=std_logic lab=in1

}
C {devices/vsource.sym} 1100 -140 0 0 {name=VIN3
value=3.3
savecurrent=false}
C {devices/gnd.sym} 1100 -60 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 1150 -360 0 0 {name=p3 sig_type=std_logic lab=in3}
C {devices/vsource.sym} 1010 -280 0 0 {name=VIN2 
value=3.3
savecurrent=false}
C {devices/gnd.sym} 1010 -200 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 1140 -380 0 0 {name=p4 sig_type=std_logic lab=in2
}
C {devices/code_shown.sym} 10 -710 0 0 {name=NGSPICE only_toplevel=true
value=" 
.control
save all

* Define transient params
let t_base = 20n
* Run for 80ns
let tstop = 4 * t_base
let tstep = t_base / 1000

* Override schematic DC sources with PULSE definitions
alter @VIN1[PULSE] = [ 0 3.3 0 100p 100p  9.9n 20n ]
alter @VIN2[PULSE] = [ 0 3.3 0 100p 100p 19.9n 40n ]
alter @VIN3[PULSE] = [ 0 3.3 0 100p 100p 39.9n 80n ]

* Simulations
op
tran $&tstep $&tstop

* Plots
setplot tran1
let vin1 = v(in1)
let vin2 = v(in2)
let vin3 = v(in3)
let vout = v(vout)
* Supply current in mA
let ivdd = -v1#branch * 1m

plot v(vout) v(in1)+4 v(in2)+8 v(in3)+12 title '3-Input AND Gate Response'

.endc
"}
C {devices/lab_wire.sym} 1550 -380 0 0 {name=p2 sig_type=std_logic lab=vout}
C {3_input_and.sym} 1330 -380 0 0 {name=x1}
