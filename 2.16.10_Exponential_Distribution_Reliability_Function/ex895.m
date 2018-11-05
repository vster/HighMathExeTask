clear
syms k lam x
assume(lam>0)
f(x)=piecewise(x<0,0,x>=0,lam*exp(-lam*x))

f(x)=subs(f(x),lam,4)
P=int(f(x),x,0.2,0.5)
% exp(-4/5) - exp(-2)
digits(3)
P=vpa(P)
% 0.314
