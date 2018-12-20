% R
% T=2*pi*sqrt(I/(m*g*a)
% where 
% I is the intrinsic moment of inertia of the ring, 
% m is the mass of the ring, 
% a is the distance from the axis of rotation to the center of the ring.
syms m R g
I0=m*R^2
I=I0+m*R^2
% 2*R^2*m
a=R
T=2*pi*sqrt(I/(m*g*a))
% 2*2^(1/2)*pi*(R/g)^(1/2)