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
| 8 | 7.82 |
| 7.5 | 7.18 |
| 7 | 6.54 |

<img width="414" alt="image" src="https://user-images.githubusercontent.com/47363228/167257570-1e4ae3ae-eaa0-4153-8b06-d17ad193361e.png">

#### Load Regulation
Load regulation test is performed by keeping the input voltage constant and changing the load resistance. The supply voltage is fixed at 20 volts RMS. We have observed that even after changing the value of load resistance, the output voltage remains constant at 10 volts. Thus, verifying the load regulation of the IC.

| I<sub>o</sub> (A) | V<sub>o</sub> (V) |
| ---------------------- | ------------------- |
| 0.03 | 10.1 |
| 0.05 | 10.1 |
| 0.1 | 10.1 |
| 0.2 | 10.1 |
| 0.4 | 10.1 |
| 0.67 | 10.1 |
| 0.91 | 9.14 |
| 1.42 | 7.11 |

<img width="410" alt="image" src="https://user-images.githubusercontent.com/47363228/167257675-5ed0b41f-9cf1-48cf-8b49-aac114fa132a.png">


#### Peak Input Current vs Output Current
The various readings of peak input current and output current for different values of load resistance are shown below.

| I<sub>in-max</sub> (mA) | I<sub>out</sub> (mA) |
| ---------------------- | ------------------- |
| 99.20 | 496 |
| 85.95 | 382 |
| 50.745 | 199 |
| 39.45 | 131.5 |

![image](https://user-images.githubusercontent.com/47363228/167257767-1a099071-8cf6-4239-a414-4d4291483849.png)


#### Peak Input Power vs Output Power
The table and plot between peak input power to the circuit and output power for different loads are shown below.

| P<sub>in-max</sub> (W) | P<sub>out</sub> (W) |
| ---------------------- | ------------------- |
| 34.475 | 4.925 |
| 25.36 | 3.794 |
| 10.8 | 1.98 |
| 6.044 | 1.314 |

<img width="298" alt="image" src="https://user-images.githubusercontent.com/47363228/167257820-dbacc49e-d976-48b1-9b2f-e345bae650ea.png">


#### Efficiency of the Regulator
Efficiency of the regulator is

<img src="https://render.githubusercontent.com/render/math?math={\eta = \frac{P_out}{P_in}}#gh-light-mode-only">
<img src="https://render.githubusercontent.com/render/math?math={\color{white}\eta = \frac{P_out}{P_in}}#gh-dark-mode-only">

Where, 
- P<sub>out</sub> = Average output power from the regulator. 
- P<sub>in</sub> = Average Input power to the regulator. 
The readings of Input power and Output power are taken for different loads and the observations are tabulated and the plot for efficiency is also drawn.

| R<sub>L</sub> (Ω) | P<sub>in-max</sub> (W) | P<sub>out</sub> (W) | Efficiency(%) |
| ----------------- | ---------------------- | ------------------- | ------------- |
| 20 | 9.03 | 4.925 | 54.54 |
| 26 | 8.29 | 3.794 | 45.76 |
| 50 | 4.562 | 1.98 | 42.56 |
| 76 | 3.298 | 1.314 | 39.84 |

Power gets dropped across the Regulator i.e. the series transistor inside the LM317 IC and other dissipative components of the IC.
