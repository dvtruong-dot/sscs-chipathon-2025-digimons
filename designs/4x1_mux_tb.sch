v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1300 -590 1300 -530 {lab=VDD}
N 1200 -250 1200 -170 {lab=GND}
N 440 -520 910 -520 {lab=V_d0}
N 500 -480 500 -440 {lab=V_d1}
N 500 -480 910 -480 {lab=V_d1}
N 570 -440 570 -360 {lab=V_d2}
N 570 -440 910 -440 {lab=V_d2}
N 630 -400 630 -280 {lab=V_d3}
N 630 -400 910 -400 {lab=V_d3}
N 1140 -670 1140 -600 {lab=V_s0}
N 990 -600 1140 -600 {lab=V_s0}
N 1040 -670 1040 -640 {lab=V_s1}
N 950 -640 1040 -640 {lab=V_s1}
N 440 -460 440 -420 {lab=GND}
N 500 -380 500 -350 {lab=GND}
N 570 -300 570 -260 {lab=GND}
N 630 -220 630 -180 {lab=GND}
N 1140 -780 1140 -730 {lab=GND}
N 1040 -780 1040 -730 {lab=GND}
N 290 -580 290 -520 {lab=VDD}
N 290 -460 290 -400 {lab=GND}
N 1300 -510 1490 -510 {lab=V_out}
N 910 -480 910 -470 {lab=V_d1}
N 1200 -530 1300 -530 {lab=VDD}
N 1200 -530 1200 -510 {lab=VDD}
N 1240 -390 1300 -390 {lab=V_out}
N 1300 -510 1300 -390 {lab=V_out}
N 910 -520 1030 -520 {lab=V_d0}
N 1030 -520 1030 -430 {lab=V_d0}
N 1030 -430 1070 -430 {lab=V_d0}
N 910 -470 1000 -470 {lab=V_d1}
N 1000 -470 1000 -410 {lab=V_d1}
N 1000 -410 1070 -410 {lab=V_d1}
N 910 -440 970 -440 {lab=V_d2}
N 970 -440 970 -390 {lab=V_d2}
N 970 -390 1070 -390 {lab=V_d2}
N 910 -400 940 -400 {lab=V_d3}
N 940 -400 940 -370 {lab=V_d3}
N 940 -370 1070 -370 {lab=V_d3}
N 990 -600 990 -570 {lab=V_s0}
N 990 -570 1140 -570 {lab=V_s0}
N 1140 -570 1140 -510 {lab=V_s0}
N 950 -640 950 -560 {lab=V_s1}
N 950 -560 1160 -560 {lab=V_s1}
N 1160 -560 1160 -510 {lab=V_s1}
C {title.sym} -140 60 0 0 {name=l1 author="The Digimons"}
C {vdd.sym} 1300 -590 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1200 -170 0 0 {name=l3 lab=GND}
C {4x1_mux.sym} 1120 -110 0 0 {name=x1}
C {vsource.sym} 440 -490 0 0 {name=v_d0 value=3.3 savecurrent=false}
C {vsource.sym} 500 -410 0 0 {name=v_d1 value=3.3 savecurrent=false}
C {vsource.sym} 570 -330 0 0 {name=v_d2 value=3.3 savecurrent=false}
C {vsource.sym} 630 -250 0 0 {name=v_d3 value=3.3 savecurrent=false}
C {vsource.sym} 1140 -700 2 0 {name=v_s0 value=3.3 savecurrent=false}
C {vsource.sym} 1040 -700 2 0 {name=v_s1 value=3.3 savecurrent=false}
C {vsource.sym} 290 -490 0 0 {name=V0 value=3.3 savecurrent=false}
C {gnd.sym} 1040 -780 2 0 {name=l4 lab=GND}
C {gnd.sym} 1140 -780 2 0 {name=l5 lab=GND}
C {gnd.sym} 630 -180 0 0 {name=l6 lab=GND}
C {gnd.sym} 570 -260 0 0 {name=l7 lab=GND}
C {gnd.sym} 500 -350 0 0 {name=l8 lab=GND}
C {gnd.sym} 440 -420 0 0 {name=l9 lab=GND}
C {vdd.sym} 290 -580 0 0 {name=l10 lab=VDD}
C {gnd.sym} 290 -400 0 0 {name=l11 lab=GND}
C {noconn.sym} 1490 -510 2 0 {name=l12}
C {lab_wire.sym} 750 -520 0 0 {name=p1 sig_type=std_logic lab=V_d0}
C {lab_wire.sym} 750 -480 0 0 {name=p2 sig_type=std_logic lab=V_d1}
C {lab_wire.sym} 750 -440 0 0 {name=p3 sig_type=std_logic lab=V_d2}
C {lab_wire.sym} 750 -400 0 0 {name=p4 sig_type=std_logic lab=V_d3}
C {lab_wire.sym} 1090 -600 2 0 {name=p5 sig_type=std_logic lab=V_s0}
C {lab_wire.sym} 1000 -640 2 0 {name=p6 sig_type=std_logic lab=V_s1}
C {lab_wire.sym} 1470 -510 0 0 {name=p7 sig_type=std_logic lab=V_out}
C {devices/code_shown.sym} -700 -920 0 0 {name=NGSPICE only_toplevel=true
value=" 
.control
save all

* Define transient params to test all 4 select states
let t_base = 80n
* Run for 160ns to see all 4 select states
let tstop = 2 * t_base
let tstep = t_base / 2000

* Override schematic DC sources with PULSE definitions for SELECT lines
alter @v_s0[PULSE] = [ 0 3.3 0 100p 100p 39.9n 80n ]
alter @v_s1[PULSE] = [ 0 3.3 0 100p 100p 79.9n 160n ]

* Set static DC values for DATA lines
alter @v_d0[DC] = 3.3
alter @v_d1[DC] = 0
alter @v_d2[DC] = 3.3
alter @v_d3[DC] = 0

* Simulations
op
tran $&tstep $&tstop

* Plots
setplot tran1
let s0 = v(V_s0)
let s1 = v(V_s1)
let vout = v(V_out)
* Data lines for reference if needed
let d0 = v(V_d0)

plot v(V_out) v(V_s0)+4 v(V_s1)+8 title "4x1 MUX Response"

.endc
"}
C {devices/code_shown.sym} -700 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
