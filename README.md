# Linear-IC-based-Regulator
Linear IC based Voltage Regulator (LM317) for DC to DC conversion following the Bridge Rectifier

### Tasks:
Design the circuit given below with the specification as follows:

<img width="958" alt="linear_ic_regulator_circuitdiagram" src="https://user-images.githubusercontent.com/47363228/167255233-fc6cde7e-49ed-49ff-8fdf-cdb01214894a.png">

- Perform line regulation test, tabulate V<sub>o</sub> vs V<sub>i</sub>
- Perform load regulation test, tabulate V<sub>o</sub> vs I<sub>o</sub>
- Plot peak input current vs I<sub>o</sub>
- Plot peak input power vs output power
- plot efficiency of the circuit

Specification:

--------------------------
### Working on the Design

#### Component Values from matlab/octave:
Values of the components is calculated according to the specification from the simulation of the program (<>.m file) [click here](Linear_IC_Based_Regulator.m)

#### Simulation of the Circuit:
The Circuit can be simulated with spice, here I used gEDA for building the cirucuit netlist and then simulated it with the stimulus designed by me. I used the model of the diode too that is included in the netlist file.

- gEDA schematic (.sch) [click here](ic_regulator.sch)
- spice netlist of the circuit (.net) [click here](ic_regulator.net)
- simulation analysis (.cir) [click here](ic_regulator.cir)
- diode model (.mod) [click here](1N4007.mod)
- LM317 model (.mod) [click here](LM317.mod)
- LM317 subcircuit (.sub) [click here](LM317.sub)

---------------------------------------
### Final Design and Simulation Results

#### Circuit Schematic for simulation

![Schematic](https://user-images.githubusercontent.com/47363228/167257020-6059cef5-e8f5-406c-8cfd-0b1a462f44f9.png)

![image](https://user-images.githubusercontent.com/47363228/167257276-032623f8-1c7b-4508-9222-270962d6042c.png)


#### Line Regulation
Line regulation is performed by varying input voltage keeping the load resistance constant(100Ω). Input voltage is varied using an auto transformer. Input voltage is measured at the secondary side to maintain safety. The output voltage remains almost same around 10V. But when the input voltage variation is very high, then the regulator is no longer able to maintain the output voltage.

| V<sub>in-rms</sub> (V) | V<sub>out</sub> (V) |
| ---------------------- | ------------------- |
| 14 | 10.1 |
| 13 | 10.1 |
| 12 | 10.1 |
| 10 | 10.1 |
| 9.5 | 9.64 |
| 9 | 9.03 |
| 8.5 | 8.44 |

