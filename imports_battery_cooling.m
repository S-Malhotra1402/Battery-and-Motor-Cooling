%battery pack cooling 
%battery pack power
Battery_Power=readmatrix('BatteryPackPower.xlsx');

%no of  cells in series
Ns=96;
%no of cells in parallel
Np=2;
%specific heat capacity
c=1350; %J/kgK
%mass of the battery pack
Mb=150.2;
h_conv = 5;
Cell_width = 0.226;
Cell_length = 0.227;
Bc = 810.5328;
%interconnection resistance through bus bar
Ri=0.0023;
%cell resistance 
SOC = [0;0.1;0.25;0.5;0.75;0.9;1.0];
T = [278.15;293.15;313.15];
Cr = [0.0117,0.0085,0.0090;
    0.0110,0.0085,0.0090;
    0.0114,0.0087,0.0092;
    0.0107,0.0082,0.0088;
    0.0107,0.0083,0.0091;
    0.0113,0.0085,0.0089;
    0.0116,0.0085,0.0089];
%nissan leaf cell data
Cell=readmatrix('NLCellData.xls');
Cell_Voltage = Cell(:,2:3)
%battery pack soc
BSOC = readmatrix('BatteryPackSOC.xlsx');
%Tamb in kelvin
Tamb=293.15;



