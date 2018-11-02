% The flow of fluid from the vessel

% Torricelli Act
% v=sqrt(2*g*h)
% where h is the height of the liquid level above the hole, 
% g is the gravitational constant.

% Torricelli formula is often written with an additional factor of phi
% v=phi*sqrt(2*g*h)

% The flow rate of liquid from capillary tubes is approximately 
% proportional to the height of the liquid column above the orifice, i.e.
% v=k*h

% Differential flow equation
% The fluid velocity is described by the Torricelli formula:
% v=sqrt(2*g*z)
% where z is the height of the liquid above the hole. 
% Then the fluid flow is determined by the expression
% q=-pi*a^2*sqrt(2*g*z)

% The equation for fluid balance in a tank is described as follows:
% dV/dt=q
% Since the change in volume dV can be expressed as
% dV=S(z)*dz
% then we get the differential equation
% S(z)*dz/dt=q(z)
% Substitute the function q (z) into this equation:
% S(z)*dz/dt=-pi*a^2*sqrt(2*g*z)
% The cross section S (z) of a cylindrical vessel does not depend 
% on the height z and is equal to
% S(z) = pi*R^2, 
% where R is the radius of the base of the cylinder. Then
% pi*R^2*dz/dt=-pi*a^2*sqrt(2*g*z)
% dz/sqrt(z)=-(a^2/R^2)*sqrt(2*g)*dt
syms z a R g t T H
eq1=int(1/sqrt(z),z,H,0)+int((a^2/R^2)*sqrt(2*g),t,0,T)
% (2^(1/2)*T*a^2*g^(1/2))/R^2 - 2*H^(1/2)
% 2*H^(1/2)=(2^(1/2)*T*a^2*g^(1/2))/R^2
% T=(R^2/a^2)*sqrt(2*H/g)




