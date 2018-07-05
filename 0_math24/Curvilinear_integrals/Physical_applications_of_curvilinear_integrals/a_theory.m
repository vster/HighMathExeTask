% Physical applications of curvilinear integrals

% Weight of curve

% If ro(x,y,z) is density of curve
% then
% m=int(C)ro(x,y,z)*ds

% If r(t)=(x(t),y(t),z(t))
% then
% m=int(alfa:beta)ro(x(t),y(t),z(t))*sqrt(diff(x,t)^2+diff(y,t)^2+diff(z,t)^2)*dt

% In the case of a plane curve defined in the Oxy plane, the mass is defined as
% m=int(C)ro(x,y)*ds

% or in parametric form
% m=int(alfa:beta)ro(x(t),y(t))*sqrt(diff(x,t)^2+diff(y,t)^2)*dt

% Center of mass and moments of inertia of the curve
% The coordinates of the center of mass of the curve are given by formulas
% xm=Myz/m, ym=Mxz/m, zm=Mxy/m
% where
% Myz=int(C)x*ro(x,y,z)*ds
% Mxz=int(C)y*ro(x,y,z)*ds
% Mxy=int(C)z*ro(x,y,z)*ds
% is first order moments

% The moments of inertia relative to the axes Ox, Oy and Oz are given by formulas
% Ix=int(C)(y^2+z^2)*ro(x,y,z)*ds
% Iy=int(C)(x^2+z^2)*ro(x,y,z)*ds
% Iz=int(C)(x^2+y^2)*ro(x,y,z)*ds

% Field work
% The work of moving a body in a force field F along a curve C 
% is expressed in terms of a curvilinear integral of the second kind
% W=int(C)F*dr

% If the vector field is given in coordinate form in the form
% F=(P(x,y,z),Q(x,y,z),R(x,y,z))
% then the field work is calculated by the formula
% W=int(C)F*dr=int(C)P*dx+Q*dy+R*dz

% In the particular case when the body moves along a plane curve C 
% in the Oxy plane, the formula
% W=int(C)F*dr=int(C)P*dx+Q*dy
% where
% F=(P(x,y),Q(x,y))

% If the path of motion C is defined by the parameter t (t often means time), 
% then the formula for computing the work takes the form
% W=int(alfa:beta)(P()*diff(x,y)+Q()diff(y,t)+R()*diff(z,t))*dy

% If the vector field F is potentially, then the work on moving the body 
% from point A to point B is expressed by the formula
% W=u(B)-u(A)
% where u(x,y,z) is potentail of field.

% Ampere's Law
% The curvilinear integral of the magnetic field with induction B along 
% the closed contour C is proportional to the total current flowing through 
% the region bounded by the contour C.
% int(C)B*dr=mu_0*I
% where mu_0 is the magnetic permeability of the vaccum

% Faraday's Law
% The electromotive force Epsilon induced in the closed loop C is equal 
% to the rate of change of the magnetic flux Ksi passing through this contour
% Epsilon=int(C)E*dr=-diff(Ksi,t)



% 








