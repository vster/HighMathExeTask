% Surface integrals of the second kind

% Consider the vector field F (x, y, z) and the surface S, 
% which is described by the vector
% r(u,v)=x(u,v)*i + y(u,v)*j + z(u,v)*k

% It is assumed that the functions x (u, v), y (u, v), z (u, v) 
% are continuously differentiable in some domain D (u, v), 
% and that the rank of the matrix
% | dx/du dy/du dz/du |
% | dx/dv dy/dv dz/dv |
% is equal 2.

% We denote by n (x, y, z) the unit normal vector to the surface S 
% at the point (x, y, z). If the surface S is smooth and the vector 
% function n (x, y, z) is continuous, then at each point of the 
% surface there are two oppositely directed unit normal vectors:
% n(x,y,z) and -n(x,y,z)
% The choice of one of them is called the orientation of the surface.

% A surface integral of the second kind from a vector field F 
% along an oriented surface S (or a flux of a vector field F 
% through a surface S) can be written in one of the following forms:

% If the surface S is oriented by an external normal, then
% int_int(S)F(x,y,z)*dS = int_int(S)F(x,y,z)*n*dS = 
% = int_int(D(u,v))F(x(u,v),y(u,v),z(u,v))*cross(diff(r,u),diff(r,v))*du*dv

% If the surface S is oriented by the inner normal, then 
% int_int(S)F(x,y,z)*dS = int_int(S)F(x,y,z)*n*dS = 
% = int_int(D(u,v))F(x(u,v),y(u,v),z(u,v))*cross(diff(r,v),diff(r,u))*du*dv

% If the surface S is given explicitly as the equation z = z (x, y), 
% where z (x, y) is a differentiable function in the domain D (x, y), 
% then the surface integral of the second kind from the vector field F 
% over the surface S is written in one of the following forms:

% If the surface S is oriented by an external normal (the k-component 
% of the normal vector is positive), then
% int_int(S)F(x,y,z)*dS = int_int(S)F(x,y,z)*n*dS = 
%  = int_int(D(x,y))F(x,y,z)*(-dz/dx*i - dz/dy*j + k)*dx*dy

% If the surface S is oriented with an internal normal 
% (the k-component of the normal vector is negative), then
% int_int(S)F(x,y,z)*dS = int_int(S)F(x,y,z)*n*dS = 
%  = int_int(D(x,y))F(x,y,z)*(dz/dx*i + dz/dy*j - k)*dx*dy

% A surface integral of the second kind can also be written in coordinate form. 
% Let P (x, y, z), R (x, y, z), R (x, y, z) be components of the vector field F. 
% Let cos(alfa), cos(beta), cos(gamma) be the direction cosines of the 
% outer normal n to the surface S. Then the scalar product F*n is equal to
% F*n=F(P,Q,R)*n(cos(alfa),cos(beta),cos(gamma) = 
%   = P*cos(alfa) + Q*cos(beta) + R*cos(gamma)
% then
% int_int(S)(F*n)*dS=int_int(S)(P*cos(alfa)+Q*cos(beta)+R*cos(gamma)*dS
% then
% int_int(S)(F*n)*dS = int_int(S)P*dy*dz+Q*dz*dx+R*dx*dy

% If the surface S is given in parametric form with the help of the 
% vector r(x(u,v),y(u,v),z(u,v)), then the last formula takes the form

%                                      |   P     Q     R   |
% int_int(S)(F*n)*dS = int_int(D(u,v)) | dx/du dy/du dz/du |*du*dv
%                                      | dx/dv dy/dv dz/dv |
