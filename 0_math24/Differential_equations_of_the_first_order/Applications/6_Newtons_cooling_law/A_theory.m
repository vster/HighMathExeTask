% Newton's cooling law

% dQ/dt=alfa*A*(Ts-T)
% where 
% Q is the amount of heat, 
% A is the surface area of the body through which heat is transferred, 
% T is the body temperature, 
% Ts is the ambient temperature, 
% alfa is the heat transfer coefficient

% Since Q = C*T, where C is the body heat capacity
% then
% dT/dt=(alfa*A/C)*(Ts-T)=k*(Ts-T)

% The solution to this equation is:
% T(t)=Ts+(T0?Ts)*exp(-k*t)
% where T0 denotes the initial body temperature.

% The cooling rate depends on the parameter 
% k = alfa*A/C
% (thermal conductivity coefficient).