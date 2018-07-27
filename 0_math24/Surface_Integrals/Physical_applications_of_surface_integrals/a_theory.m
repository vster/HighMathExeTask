% Physical applications of surface integrals

% Shell Weight
% Let S be a thin smooth shell. The distribution of the shell mass 
% is described by the density function mu (x, y, z). 
% Then the total mass of the shell is expressed in terms 
% of the surface integral of the first kind by the formula
% m = int_int (S) mu(x,y,z) dS

% Center of mass and moments of inertia of the shell
% Let the mass distribution m in a thin shell be described 
% by a continuous density function mu (x, y, z). 
% The coordinates of the center of mass of the 
% shell are given by formulas
% xC=Myz/m
% yC=Mxz/m
% zC=Mxy/m
% where
% Myz = int_int (S) x*mu(x,y.z) dS
% Mxz = int_int (S) y*mu(x,y.z) dS
% Mxy = int_int (S) z*mu(x,y.z) dS
% is the so-called first-order moments with respect 
% to the coordinate planes x = 0, y = 0 and z = 0, respectively.

% The moments of inertia of the shell relative to the axes Ox, Oy, Oz 
% are expressed, respectively, by formulas
% Ix = int_int (S) (y^2+z^2)*mu(x,y,z) dS
% Iy = int_int (S) (x^2+z^2)*mu(x,y,z) dS
% Iz = int_int (S) (x^2+y^2)*mu(x,y,z) dS

% The moments of inertia of the shell relative to the planes 
% xy, yz, xz are given by formulas
% Ixy = int_int (S) z^2*mu(x,y,z) dS
% Iyz = int_int (S) x^2*mu(x,y,z) dS
% Ixz = int_int (S) y^2*mu(x,y,z) dS

% Surface attraction force
% Suppose that a surface S is given, and at a point (x0, y0, z0) 
% not belonging to the surface, there is a body of mass m
% The attractive force between the surface S and the point body m 
% is given by
% F = G*m int_int (S) mu(x,y,z) r/r^3 dS
% where r = (x-x0, y-y0, z-z0), G is the gravitational constant, 
% and mu (x, y, z) is the density function.

% Force of pressure
% Suppose that the surface S is given by the vector r and 
% is under the influence of some pressure force (this may be a 
% dam, an aircraft wing, a cylinder wall with compressed gas, etc.). 
% The total force F, created by the pressure p (r), 
% is found by means of the surface integral by the formula
% F = int_int (S) p(r) dS

% The pressure, by definition, acts in the direction of the normal 
% vector to the surface S at each point. Therefore, we can write
% F = int_int (S) p(r) dS = int_int (S) p*n dS
% where n is the unit normal vector to the surface S

% Fluid flow and substance flow
% If the fluid velocity v (r) is considered as a vector field, 
% then the flow through the surface S is called the fluid flow. 
% It is equal to the volume of liquid passing through 
% the surface S per unit time and is expressed by the formula
% Phi = int_int (S) v(r)*dS

% Similarly, the flux of a vector field F = ro*v, where ro is the density, 
% is called the substance flux and is determined by the expression
% Phi = int_int (S) ro*v(r)*dS
% It is numerically equal to the mass of the substance passing 
% through the surface S per unit time.

% Surface charge
% Let the quantity sigma (x, y) be the density of the charge distribution 
% over the surface. Then the total charge distributed over the conducting 
% surface S is expressed by the formula
% Q = int_int (S) sigma(x,y) dS

% The Gauss Theorem
% The flow of electric displacement D through the closed surface S 
% is equal to the algebraic sum of all charges located inside the surface:
% Phi = int_int (S) D*dS = sum (i) Qi
% where D = epsilon*epsilon0*E, E is the electric field strength, 
% epsilon is the relative dielectric constant of the medium, 
% epsilon0 = 8.85*E-12 Ph/m is the dielectric constant of the vacuum.

% The Gauss theorem is applicable to any closed surfaces. 
% In the case of a surface with sufficient symmetry, 
% this theorem simplifies the calculation of the electric field. 
% The Gauss theorem is regarded as one of the basic postulates 
% of the theory of electricity. 
% It is included in the system of basic Maxwell equations





