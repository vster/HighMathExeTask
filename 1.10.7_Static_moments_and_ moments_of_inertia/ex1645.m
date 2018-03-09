syms x a k h;

% y=h-kx
ks=solve(h-a/2*k==0)
y=h-(2*h/a)*x

f1=y^2
% Mx - статический момент
Mx=int(f1,0,a/2)
% (a*h^2)/6

f2=y^3
% Ix - момент инерции
Ix=2/3*int(f2,0,a/2)
% (a*h^3)/12
