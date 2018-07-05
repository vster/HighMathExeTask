% Estimate the value of the electromotive force Eps and the electric field E 
% arising in a 1 cm radius ring at the passenger of the aircraft 
% when the aircraft is flying in a magnetic field of the Earth at a speed of 900 km/h.

% Faraday's Law
% Eps=int(C)E*dr=-diff(Ksi,t)

% D_ksi=2*r*B*x=2*r*B*v*D_t
% where x=v*D_t, 
% v is the speed of the aircraft, B is the induction of the Earth's magnetic field.

syms t dt r B v;
d_ksi=2*r*B*v*dt
Eps=-d_ksi/dt
% -2*B*r*v
Eps=2*B*r*v
% v = 900 km/h = 250 m/s
% r = 1 cm = 0.01 m
% B = 5E-5 T

Eps1=subs(Eps,[B,r,v],[5E-5,0.01,250])
% 1/4000
digits(2)
vpa(Eps1)
% Eps = 2.5e-4 V

% The strength of the resulting electric field
% Eps = int_c(C)E*dr = int_c(C)E*dr*cos(0) = E*int_c(C)*dr = 2*pi*r*E
syms Eps r;
E = Eps/(2*pi*r)
E=subs(E,[Eps,r],[Eps1,0.01])
% 1/(80*pi)
vpa(E)
% E = 4.0e-3 V/m
