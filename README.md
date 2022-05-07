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

[embed]Report_Linear IC-based Regulator.pdf[/embed]
