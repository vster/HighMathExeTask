% Estimate the mass of fuel needed to launch a small "nanosatellite" 
% weighing 50kg into low orbit using a single-stage rocket. 
% The specific impulse of the rocket is 3000 m/s.

% v=u*log(m0/m)
% m0=m+mp
% (m+mp)/m=exp(v/u)
% mp=m*(exp(v/u)-1)
syms m v u 
mp=m*(exp(v/u)-1)
mp1=subs(mp,[m v u],[50 7910 3000])
digits(3)
mp1=vpa(mp1)
% 648.0