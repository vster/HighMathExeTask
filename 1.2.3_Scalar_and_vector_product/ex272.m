syms F s phi
% Find the work of the force F on the displacement s
A=F*s*cos(phi)
A=subs(A,F,2)
A=subs(A,s,5)
A=subs(A,phi,30*pi/180)