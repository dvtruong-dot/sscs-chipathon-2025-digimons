v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1010 -610 1010 -550 {lab=VDD}
N 1010 -320 1010 -240 {lab=GND}
N 440 -520 910 -520 {lab=V_d0}
N 500 -480 500 -440 {lab=V_d1}
N 500 -480 910 -480 {lab=V_d1}
N 570 -440 570 -360 {lab=V_d2}
N 570 -440 910 -440 {lab=V_d2}
N 630 -400 630 -280 {lab=V_d3}
N 630 -400 910 -400 {lab=V_d3}
N 790 -290 790 -220 {lab=V_s0}
N 790 -290 940 -290 {lab=V_s0}
N 940 -320 940 -290 {lab=V_s0}
N 890 -250 890 -220 {lab=V_s1}
N 890 -250 980 -250 {lab=V_s1}
N 980 -320 980 -250 {lab=V_s1}
N 440 -460 440 -420 {lab=GND}
N 500 -380 500 -350 {lab=GND}
N 570 -300 570 -260 {lab=GND}
N 630 -220 630 -180 {lab=GND}
N 790 -160 790 -110 {lab=GND}
N 890 -160 890 -110 {lab=GND}
N 290 -580 290 -520 {lab=VDD}
N 290 -460 290 -400 {lab=GND}
N 1070 -450 1260 -440 {lab=#net1}
C {title.sym} -140 60 0 0 {name=l1 author="The Digimons"}
C {vdd.sym} 1010 -610 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1010 -240 0 0 {name=l3 lab=GND}
C {4x1_mux.sym} 1040 -210 0 0 {name=x1}
C {vsource.sym} 440 -490 0 0 {name=v_d0 value=3.3 savecurrent=false}
C {vsource.sym} 500 -410 0 0 {name=v_d1 value=3.3 savecurrent=false}
C {vsource.sym} 570 -330 0 0 {name=v_d2 value=3.3 savecurrent=false}
C {vsource.sym} 630 -250 0 0 {name=v_d3 value=3.3 savecurrent=false}
C {vsource.sym} 790 -190 0 0 {name=v_s0 value=3.3 savecurrent=false}
C {vsource.sym} 890 -190 0 0 {name=v_s1 value=3.3 savecurrent=false}
C {vsource.sym} 290 -490 0 0 {name=V0 value=3.3 savecurrent=false}
C {gnd.sym} 890 -110 0 0 {name=l4 lab=GND}
C {gnd.sym} 790 -110 0 0 {name=l5 lab=GND}
C {gnd.sym} 630 -180 0 0 {name=l6 lab=GND}
C {gnd.sym} 570 -260 0 0 {name=l7 lab=GND}
C {gnd.sym} 500 -350 0 0 {name=l8 lab=GND}
C {gnd.sym} 440 -420 0 0 {name=l9 lab=GND}
C {vdd.sym} 290 -580 0 0 {name=l10 lab=VDD}
C {gnd.sym} 290 -400 0 0 {name=l11 lab=GND}
C {noconn.sym} 1260 -440 2 0 {name=l12}
C {lab_wire.sym} 750 -520 0 0 {name=p1 sig_type=std_logic lab=V_d0}
C {lab_wire.sym} 750 -480 0 0 {name=p2 sig_type=std_logic lab=V_d1}
C {lab_wire.sym} 750 -440 0 0 {name=p3 sig_type=std_logic lab=V_d2}
C {lab_wire.sym} 750 -400 0 0 {name=p4 sig_type=std_logic lab=V_d3}
C {lab_wire.sym} 840 -290 0 0 {name=p5 sig_type=std_logic lab=V_s0}
C {lab_wire.sym} 930 -250 0 0 {name=p6 sig_type=std_logic lab=V_s1}
C {lab_wire.sym} 1250 -440 0 0 {name=p7 sig_type=std_logic lab=V_out}
C {devices/code_shown.sym} -700 -920 0 0 {name=NGSPICE only_toplevel=true
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
C {devices/code_shown.sym} -700 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
