syms a t real;
x=a*cosh(t)
y=a*sinh(t)

dx=diff(x)
f=y*dx

S=1/2*x*y-int(f,t,0,t)
S=simplify(S)
% S=(a^2*t)/2
% t=2*S/a^2
