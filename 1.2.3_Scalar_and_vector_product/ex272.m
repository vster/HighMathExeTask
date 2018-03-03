syms F s phi
% Найти работу силы F на перемещении s
A=F*s*cos(phi)
A=subs(A,F,2)
A=subs(A,s,5)
A=subs(A,phi,30*pi/180)