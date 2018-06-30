% Geometric applications of curvilinear integrals

% Curve length

% Let C is a smooth, piecewise-continuous curve that 
% is described by a vector r(t), alfa<=t<=beta
% then
% L=int(C)ds=int(alfa:beta)abs(diff(r(t),t))*dt =
%  = int(alfa:beta)sqrt(diff(x,t)^2+diff(y,t)^2+diff(z,t)^2)*dt

% If the cuve C is given in the plane, then its 
% length is expressed by the formula
% then
% L=int(C)ds=int(alfa:beta)abs(diff(r(t),t)) =
%   = int(alfa:beta)sqrt(diff(x,t)^2+diff(y,t)^2)*dt

% If the curve C is a graph of an explicitly defined, 
% continuous and differentiable function y=f(x) in plane 0xy
% then
% L=int(a:b)sqrt(1+diff(y,x)^2)*dx

% If the curve C is given in polar coordinates by the equation
% r=r(teta), alfa<=teta<=beta
% then
% L=int(alfa:beta)sqrt(diff(r,teta)^2+r^2)*d_teta

% Area of the region bounded by a closed curve

% Let C is a smooth, piecewise-continuous and closed curve 
% defined in the plane Oxy
% then
% S=int_c(C)x*dy=-int_c(C)y*dx=1/2*ubt(C)x*dy-y*dx

% S = int(alfa:beta)x(t)*diff(y,t)*dt =
%     = -int(alfa:beta)y(t)diff(x,t)*dt = 
%       = 1/2*int(alfa:beta)(x(t)*diff(y,t)-y(t)diff(x,t))*dt

% The volume of the body formed by the rotation of the 
% closed curve relative to the axis Ox
% V=-pi*int_c(C)y^2*dx=-2*pi*int_c(C)x*y*dy = 
%    = -pi/2*int_c(C)2*x*y*dy+y^2*dx

