% The electric vector field
% F=(k*e/r^2)*r0
% Determine the flow vector field through the sphere
% x^2+y^2+z^2=R^2

syms k e r r0;
F=(k*e/r^2)*r0

% P = int int (S) F*n*dS 
% P = int int (S) (k*e/r^2)*r0*n*dS

% If r=R=const and r0*n=1
% then
% P = (k*e/R^2) int int (S)dS = (k*e/R^2)*Ssf
% P = (k*e/R^2)*(4*pi*R^2) = 4*pi*k*e