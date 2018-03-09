syms a b x;
y=b/2

f2=y^3
% Ix - момент инерции
Ix=2/3*int(f2,x,-a/2,a/2)
% (a*b^3)/12

f3=x^2*y
Iy=2*int(f3,x,-a/2,a/2)
% (a^3*b)/12

