%importing motor mechanical power and electrical power
MMP = readmatrix('Motor mechanical power.xlsx');
MEP = readmatrix('Motor electrical power.xlsx');

%motor
%mass of the motor
Mm = 23.69; %kg
mCp = 1350; %J/kg-c
%initial motor temperature
Tmotor_i = 20; %C
%Motor cooling
%Air
Cp = 1350; %J/kg-c
%water
%Cp = 4182; %J/kg-c
%ambient temperature
Tamb = 18; %C
%simulation time
Tsim = MMP(end,1);

%calculating the motor cooling mass flow rate
[Motor_max_HP,index] = max(out.Motor_HP.Data);
%motor temperature at maximum motor heating power
Tm_at_max_HP = out.Motor_Temp.Data(index);

%motor cooling power
Motor_cooling_max_power = Motor_max_HP*1.1;
%motor coolant mass flow rate
%m = MCP/(Cp*(Tin-Tamb))
Cm = Motor_cooling_max_power/(Cp*(Tm_at_max_HP-Tamb));


