clear
syms x y real
f=(x^3-3*x*y^2)+1i*(3*x^2*y-y^3)
u=real(f)
v=imag(f)

dux=diff(u,x)
% 3*x^2 - 3*y^2
duy=diff(u,y)
% -6*x*y
dvx=diff(v,x)
% 6*x*y
dvy=diff(v,y)
% 3*x^2 - 3*y^2
% dux=dvy - correct 
% duy=-dvx - correct

dfz=diff(u,x)+1i*diff(v,x)
% 3*x^2 + x*y*6i - 3*y^2

f=(x+i*y)^3
f=expand(f)
% x^3 + x^2*y*3i - 3*x*y^2 - y^3*1i

syms z
f(z)=z^3
df=diff(f)
% 3*z^2