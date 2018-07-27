% The viscous liquid flows in a cylindrical tube of radius R with velocity 
% v = C*exp(-r)*k (m*s^(-1)), where k is the unit vector directed 
% along the pipe axis towards the flow, r is the distance from the axis, 
% C is a constant. 
% Calculate the flow of fluid through the cross-section of the pipe.

% Phi = int_int (S) v(r)*dS

syms r phi C R real;
v=C*exp(-r)

Phi=int(int(v*r,r,0,R),phi,0,2*pi)
% -2*C*pi*(exp(-R)*(R + 1) - 1)
% 2*C*pi*(1 - exp(-R)*(R + 1))