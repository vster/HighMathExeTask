% Weight of the plate
% M=int_int(D)gamma(x,y)*dx*dy

% Static moments of the plate relative to the axes
% Mx=int_int(D)y*gamma(x,y)*dx*dy
% My=int_int(D)x*gamma(x,y)*dx*dy

% Coordinates of the center of gravity of the plate
% xm=My/M
% ym=Mx/M

% In the case of a homogeneous plate
% xm=1/S*int_int(D)x*dx*dy
% ym=1/S*int_int(D)y*dx*dy
% where S is area of the region D

% The moments of inertia of the plate are relatively Ox and Oy
% Ix=int_int(D)y^2*gamma(x,y)*dx*dy
% Iy=int_int(D)x^2*gamma(x,y)*dx*dy

% Moment of inertia relative to the origin
% I0=int_int(D)(x^2+y^2)*gamma(x,y)*dx*dy=Ix+Iy