% The Ostrogradsky-Gauss theorem

% We denote by G a three-dimensional body bounded by a piecewise 
% continuous smooth surface S with an exterior normal. 
% Suppose that we are given a vector field
% F(x,y,z)=(P(x,y,z),Q(x,y,z),R(x,y,z))
% whose components have continuous partial derivatives.

% According to the Ostrogradsky-Gauss formula,
% int_int (S) F*dS = int_int_int (G) div(F) dV

% The Ostrogradsky-Gauss formula connects surface integrals 
% of the second kind with the corresponding triple integrals.

% This formula can also be written in coordinate form:
% int_int (S) P dy dz + Q dx dz + R dx dy =
%     = int_int_int (G) (dP/dx + dQ/dy + dR/dz) dx dy dz

% In the particular case, setting P = x, Q = y, R = z, 
% we obtain the formula for calculating the volume of a body G:
% V = 1/3*|int_int (S) x dy dz + y dx dz + z dx dy|


