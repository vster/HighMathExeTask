% Is the function differentiable f(z)=(x^2+y^2)-2*x*y*i ?
clear
syms x y real
f=(x^2+y^2)-2*x*y*i
u=real(f)
v=imag(f)

dux=diff(u,x)
% 2*x
duy=diff(u,y)
% 2*y
dvx=diff(v,x)
% -2*y
dvy=diff(v,y)
% -2*x
% dux=dvy - not correct 
% duy=-dvx - correct
% One of the Cauchy-Riemann conditions is not satisfied.
% This function is not differentiable.
