% Determine at what altitude the air pressure is two times 
% lower than at sea level?

syms h p0
P=P0*exp(-1.2e-4*h)
% P=P0/2 => 1/2=exp(-1.2e-4*h)
H=vpa(log(2)/1.2e-4)
% 5788.0m