clear
syms k lam x
assume(lam>0)
f(x)=piecewise(x<0,0,x>=0,k*exp(-lam*x))

F1=int(f(x),x,0,inf)
% k/lam=1 => k=lam