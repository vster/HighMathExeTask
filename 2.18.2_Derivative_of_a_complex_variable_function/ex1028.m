% Is the function differentiable f(z)=y+x*i ?
clear
syms x y real
f=y+x*i
u=real(f)
v=imag(f)

dux=diff(u,x)
% 0
duy=diff(u,y)
% 1
dvx=diff(v,x)
% 1
dvy=diff(v,y)
% 0
% dux=dvy - correct
% duy=-dvx - not corrcet
% One of the Cauchy-Riemann conditions is not satisfied.
% This function is not differentiable.