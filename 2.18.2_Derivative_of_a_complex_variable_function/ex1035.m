clear
syms x y real
f=sin(x)*cosh(y)+1i*cos(x)*sinh(y)
u=real(f)
v=imag(f)

dux=diff(u,x)
% cos(x)*cosh(y)
duy=diff(u,y)
% sin(x)*sinh(y)
dvx=diff(v,x)
% -sin(x)*sinh(y)
dvy=diff(v,y)
% cos(x)*cosh(y)
% dux=dvy - correct 
% duy=-dvx - correct

dfz=diff(u,x)+1i*diff(v,x)
% cos(x)*cosh(y) - sin(x)*sinh(y)*1i

f=sin(x+i*y)
f=expand(f)
% cosh(y)*sin(x) + cos(x)*sinh(y)*1i
syms z
f=sin(z)
df=diff(f,z)
% cos(z)