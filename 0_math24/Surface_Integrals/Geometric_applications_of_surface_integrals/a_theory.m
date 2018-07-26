% Geometric applications of surface integrals

% Surface area

% Let S be a smooth, piecewise-continuous surface. 
% The surface area is determined by the integral
% A=int_int (S) dS

% If the surface S is given parametrically by means of the vector
% r(u,v)=x(u,v)*i+y(u,v)*j+z(u,v)*k
% then the surface area will be
% A=int_int (D(u,v)) |cross(dr/du,dr/dv)| du dv
% where D (u, v) is the area in which the surface is given.

% If the surface S is given in explicit form by the function z (x, y), 
% then the surface area is expressed by the formula
% A = int_int (D(x,y)) sqrt(1+diff(z,x)^2+diff(z,y)^2) dx dy

% Volume of a body bounded by a closed surface
% V = 1/3 * |int_int (S) x dy dz + y dx dx + z dx dy|
% where D (x, y) is the projection of the surface S onto the Oxy plane.