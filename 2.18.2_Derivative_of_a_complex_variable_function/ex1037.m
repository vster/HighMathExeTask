clear
syms x y lam real
f=y+lam*x*1i
u=y
v=lam*x

dux=diff(u,x)
% 0
duy=diff(u,y)
% 1
dvx=diff(v,x)
% lam
dvy=diff(v,y)
% 0
% dux=dvy - correct 
% duy=-dvx => lam=-1
f=y-x*1i

syms z
f1=-i*z
f1=subs(f1,z,x+i*y)
% y - x*1i
