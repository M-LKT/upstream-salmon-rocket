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

average_rho = (LOX_rho*LOX_l + fuel_rho*fuel_l)/(LOX_l+fuel_l); %g/mL

% when mass = liftoff mass, pressure = liftoff pressure
% when mass = 0, pressure = ~400psi

prop_mass_i = 1.0976926; %kg

flowrate_gain = 0.000042386326;
flowrate_offset = 0.02812874067;

 