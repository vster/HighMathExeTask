% Body volume
% V=int_int_int(T)dx*dy*dz

% Body mass
% M=int_int_int(T)gamma(x,y,z)*dx*dy*dz

% Coordinates of the center of gravity
% xm=1/M*int_int_int(T)gamma*x*dx*dy&dz
% ym=1/M*int_int_int(T)gamma*y*dx*dy&dz
% zm=1/M*int_int_int(T)gamma*z*dx*dy&dz

% If gamma=1
% xm=1/V*int_int_int(T)x*dx*dy&dz
% ym=1/V*int_int_int(T)y*dx*dy&dz
% zm=1/V*int_int_int(T)z*dx*dy&dz

% Moments of inertia (geometric) relative 
% to the coordinate axes
% Ix=int_int_int(T)(y^2+z^2)*dx*dy*dz
% Iy=int_int_int(T)(x^2+z^2)*dx*dy*dz
% Iz=int_int_int(T)(x^2+y^2)*dx*dy*dz