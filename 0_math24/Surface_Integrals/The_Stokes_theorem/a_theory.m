% The Stokes theorem

% Let S be a smooth surface bounded by a smooth curve C. 
% Then for any continuously differentiable vector function
% F(x,y,z)=(P(x,y,z),Q(x,y,z),R(x,y,z))

% the Stokes theorem is valid
% int_c (C) F*dr = int_int (S) rot(F)*dS

% where
%          |  i    j    k   |
% rot(F) = | d/dx d/dy d/dz |
%          |  P    Q    R   |

% The Stokes theorem connects curvilinear integrals of the second kind 
% and surface integrals of the second kind.

% In the coordinate form, the Stokes theorem can be written 
% in the following form:
% int_c (C) P dx + Q dy + R dz = 
%   = int_int (S) (dR/dy-dQ/dz)dydz + (dP/dz-dR/dx)dzdx+(dQ/dx-dP/dy)dxdy