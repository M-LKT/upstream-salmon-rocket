% Settings and variables

press_l = 18; %in
LOX_l = 16; %in
fuel_l = 10; %in

press_rho = 0.077; %g/cm^3
LOX_rho = 1.14;
fuel_rho = 0.8;
mil_to_cu_in = 0.0610237;

tube_id = 1.902; %in

press_vol = press_l * pi() * (tube_id/2)^2; %in^3
LOX_vol = LOX_l * pi() * (tube_id/2)^2;
fuel_vol = fuel_l * pi() * (tube_id/2)^2;

prop_vol = LOX_vol + fuel_vol; %in^3

m_i = 1.09769264; %kg
p_i = 1000; %psi
mdot_i = 0.0697; %kg/s

dry_mass = 5.63+0.5; %lb
dry_mass_N = dry_mass*4.44822;

average_rho = (LOX_rho*LOX_l + fuel_rho*fuel_l)/(LOX_l+fuel_l); %g/mL


% when mass = liftoff mass, pressure = liftoff pressure
% when mass = 0, pressure = ~400psi

prop_mass_i = 1.0976926; %kg

flowrate_gain = 0.000042386326;
flowrate_offset = 0.02812874067;

isp_gain = 0.04376923077;
isp_offset = 2705.153846;

CdA = mdot_i/(sqrt(2*(p_i-14.7))); 

p = [1000; 950; 900; 850; 800; 750; 700; 650; 600; 550; 500; 450; 400];
isp = [2747.20; 2745.80; 2744.20; 2742.60; 2740.90; 2739.00; 2737.00; 2734.90; 2732.50; 2729.90; 2727.10; 2723.90; 2720.30];