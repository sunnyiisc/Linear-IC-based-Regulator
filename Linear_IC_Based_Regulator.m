%------------SPECIFICATION OF THE CIRCUIT-------------
Vo = 10; %Required output DC voltage
Vin = 20; %Input DC voltage

%------Calculations for resistor values R1 and R2 and Capacitor values---------
R1 = 220;
R2 = R1*((Vo/1.25)-1);
C1 = 1000; 
C2 = 10; %Improves transient response [Datasheet value]
C3 = 1; %Bypass capacitor [Datasheet value]

%DISPLAY
fprintf(1,'%s\n\n','SPECIFICATIONS');
fprintf(1,'%s\t %7.2f\n','Output DC Voltage (V)',Vo);
fprintf(1,'%s\t %7.2f\n','Input DC voltage (V)',Vin);
fprintf(1,'%s\n\n','RESISTOR AND CAPACITOR VALUES SELECTION');
fprintf(1,'%s\t %7.2f\n','R1 (Ohms)',R1);
fprintf(1,'%s\t %7.2f\n','R2 (Ohms)',R2);
fprintf(1,'%s\t %7.2f\n','C1 (uF)',C1);
fprintf(1,'%s\t %7.2f\n','C2 (uF)',C2);
fprintf(1,'%s\t %7.2f\n','C3 (uF)',C3);

 
