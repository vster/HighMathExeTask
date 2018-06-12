% The surface integral of the I kind
% int(S)F(x,y,z)dS = 
%     = int_int(D)F(x,y,f(x,y))*sqrt(1+diff(z,x)^2+diff(z,y)^2)*dx*dy

% The surface integral of the II kind
% int_int(S+)P*dy*dz+Q*dz*dy+R*dx*dy = 
%   = int_int(S)(P*cos(alfa)+Q*cos(beta)+R*cos(gamma))*dS

% Moments of inertia relative to the coordinate axes
% Iox=int_int(S)(y^2+z^2)dS
% Ioy=int_int(S)(x^2+z^2)dS
% Ioz=int_int(S)(x^2+y^2)dS

% Coordinates of the center of gravity
% xm=1/S*int_int(S)x*dS
% ym=1/S*int_int(S)y*dS
% zm=1/S*int_int(S)z*dS

% Mass of material surface
% m=int_int(S)gamma*dS

% Static moments of the surface
% Mxy=int_int(S)z*gamma*dS
% Myz=int_int(S)x*gamma*dS
% Mxz=int_int(S)y*gamma*dS


