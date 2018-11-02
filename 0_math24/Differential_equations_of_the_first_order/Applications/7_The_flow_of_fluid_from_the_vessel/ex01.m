% Derive the differential equation for the outflow of fluid from 
% a conical vessel and determine the total outflow time T. 
% The radius of the upper base of the conical vessel is R, 
% and the radius of the lower base is a. Initial fluid level is H

% The change in fluid level at height z is described 
% by a differential equation
% S(z)*dz/dt=q(z)
% where S (z) is the cross-sectional area of the vessel at a height z, 
% and q (z) is the fluid flow depending on the height z.

% q(z)=-pi*a^2*sqrt(2*g*z)
% where a is the radius of the hole at the bottom of the conical vessel

% From the similarity of triangles it follows that
% R/H=r/z
% then
% S(z)=pi*r^2=pi*(R*z/H)^2=pi*R^2*z^2/H^2

% Substituting S (z) and q (z) into a differential equation, we have:
% (pi*R^2*z^2/H^2)*dz/dt=-pi*a^2*sqrt(2*g*z)
% then
% z^(3/2)*dz=-(a^2*H^2/R^2)*sqrt(2*g)*dt
syms z a H R g t
eq1=int(z^(3/2),z,H,0)+int((a^2*H^2/R^2)*sqrt(2*g),t,0,T)
% (2^(1/2)*H^2*T*a^2*g^(1/2))/R^2 - (2*H^(5/2))/5
% (2*H^(5/2))/5=(2^(1/2)*H^2*T*a^2*g^(1/2))/R^2
% T=(R^2/(5*a^2))*sqrt(2*H/g)


