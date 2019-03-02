% fa=(3+4i)/z+(3+4i)^2/z^2+...
% fb=1+z/i+z^2+i^2+...

% |(3+4i)/z|<1 and |z/i|<1
clear
syms z
ineq1=abs((3+4i)/z)<1
% 5/abs(z) < 1 => abs(z)>5
ineq2=abs(z/i)<1
% abs(z) < 1
% these inequalities are incompatible
% hence this series does not converge at any point of the plane.