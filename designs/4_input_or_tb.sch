v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 870 -460 870 -390 {lab=VDD}
N 870 -330 870 -280 {lab=GND}
N 950 -400 950 -350 {lab=GND}
N 1070 -480 1200 -480 {lab=vin0}
N 1120 -330 1120 -280 {lab=GND}
N 1060 -380 1060 -330 {lab=GND}
N 950 -480 1070 -480 {lab=vin0}
N 950 -480 950 -460 {lab=vin0}
N 1320 -440 1440 -440 {lab=vout}
N 1260 -520 1260 -495 {lab=VDD}
N 1260 -390 1260 -370 {lab=GND}
N 1200 -190 1200 -140 {lab=GND}
N 1200 -290 1200 -250 {lab=vin3}
N 1200 -405 1200 -290 {lab=vin3}
N 1060 -460 1200 -455 {lab=vin1}
N 1060 -460 1060 -440 {lab=vin1}
N 1120 -430 1200 -430 {lab=vin2}
N 1120 -430 1120 -390 {lab=vin2}
C {devices/title.sym} 180 -60 0 0 {name=l1 author="Derek Truong"}
C {devices/code_shown.sym} 60 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 870 -360 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/vsource.sym} 950 -430 0 0 {name=VIN0 
value=3.3
savecurrent=false}
C {devices/vdd.sym} 870 -460 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} 1260 -520 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 870 -280 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 950 -350 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1260 -370 0 0 {name=l6 lab=GND}
C {devices/noconn.sym} 1440 -440 2 0 {name=l7}
C {devices/lab_wire.sym} 1140 -480 0 0 {name=p1 sig_type=std_logic lab=vin0


}
C {devices/vsource.sym} 1120 -360 0 0 {name=VIN2
value=3.3
savecurrent=false}
C {devices/gnd.sym} 1120 -280 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 1060 -410 0 0 {name=VIN1 
value=3.3
savecurrent=false}
C {devices/gnd.sym} 1060 -330 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} -20 -790 0 0 {name=NGSPICE only_toplevel=true
value=" 
.control
save all

* Define transient params for 4 inputs (2^4 = 16 states)
let t_base = 20n
* Run for 160ns to see all 16 states
let tstop = 8 * t_base
let tstep = t_base / 1000

* Override schematic DC sources with PULSE definitions
alter @VIN0[PULSE] = [ 0 3.3 0 100p 100p   9.9n  20n ]
alter @VIN1[PULSE] = [ 0 3.3 0 100p 100p  19.9n  40n ]
alter @VIN2[PULSE] = [ 0 3.3 0 100p 100p  39.9n  80n ]
alter @VIN3[PULSE] = [ 0 3.3 0 100p 100p  79.9n 160n ]

* Simulations
op
tran $&tstep $&tstop

* Plots
setplot tran1
let vin0 = v(vin0)
let vin1 = v(vin1)
let vin2 = v(vin2)
let vin3 = v(vin3)
let vout = v(vout)
* Supply current in mA
let ivdd = -v1#branch * 1m

plot v(vout) v(vin0)+4 v(vin1)+8 v(vin2)+12 v(vin3)+16 title '4-Input OR Gate Response'

.endc
"}
C {devices/lab_wire.sym} 1390 -440 0 0 {name=p2 sig_type=std_logic lab=vout}
C {4_input_or.sym} 1190 -270 0 0 {name=x1}
C {devices/vsource.sym} 1200 -220 0 0 {name=VIN3
value=3.3
savecurrent=false}
C {devices/gnd.sym} 1200 -140 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 1200 -310 0 0 {name=p5 sig_type=std_logic lab=vin3
}
C {devices/lab_wire.sym} 1060 -450 0 0 {name=p4 sig_type=std_logic lab=vin1


}
C {devices/lab_wire.sym} 1140 -430 0 0 {name=p3 sig_type=std_logic lab=vin2


}
