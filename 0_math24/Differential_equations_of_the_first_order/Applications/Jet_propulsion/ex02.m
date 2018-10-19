% Estimate the acceleration of the rocket at the time when the spacecraft 
% reaches orbit. Take the following parameter values: specific impulse 
% (gas flow rate) u = 3000 m/s, the mass of a spacecraft in orbit is 
% m = 5000 kg, the rate of combustion of fuel in a rocket is mu = 100 kg/s

% v=u*log(m0/m)
% m(t)=m0-mu*t
% v(t)=u*log(m0/(m0-mu*t))
syms m m0 mu t u
v=u*log(m0/(m0-mu*t))
a=diff(v,t)
% a(t)=(mu*u)/(m0 - mu*t) = mu*u/m
a=mu*u/m

dat= diff(a,t)
% (mu^2*u)/(m0 - mu*t)^2 >0

damu=simplify(diff(a,mu))
% (m0*u)/(m0 - mu*t)^2 >0

a1=subs(a,[u mu m],[3000 100 5000])
% 60 = 6*g

