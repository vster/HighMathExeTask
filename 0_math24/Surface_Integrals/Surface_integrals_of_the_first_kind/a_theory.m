% Surface integrals of the first kind

% Let S be given by a vector function
% r(u,v)=x(u,v)*i+y(u,v)*j+z(u,v)*k
% where the coordinates (u, v) vary within a certain domain 
% of definition D (u, v) in the uv plane.

% Note that the function f (x, y, z) is considered only 
% at points belonging to the surface S, that is,
% f(r(u,v)) = f(x(u,v),y(u,v),z(u,v))

% The surface integral of the first kind of the function f (x, y, z) 
% over the surface S is defined as follows:
% int_int(S)f(x,y,z)*dS=int_int(D(u,v))f(x,y,z)*|cross(diff(r,u),diff(r,v)|*du*dv

% Absolute value dS=|cross(diff(r,u),diff(r,v)|*du*dv is called an element
% of the area.

% The surface area S is expressed by means of the surface integral in the form
% A=int_int(S)dS

% If the surface S is given by the equation z = z (x, y), 
% where z (x, y) is a differentiable function in the domain D (x, y), 
% then the surface integral is found by the formula
% int_int(S)f(x,y,z)dS=int_int(D(x,y))f(x,y,z(x,y))sqrt(1+diff(z,x)^2+diff(z,y)^2)*dx*dy