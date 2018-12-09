% Is the function differentiable f(z)=(x^2-y^2)+2*x*y*i ?
clear
syms x y real
f=(x^2-y^2)+2*x*y*i
u=real(f)
v=imag(f)

dux=diff(u,x)
% 2*x
duy=diff(u,y)
% -2*y
dvx=diff(v,x)
% 2*y
dvy=diff(v,y)
% 2*x
% dux=dvy - correct 
% duy=-dvx - correct

dfz=diff(u,x)+1i*diff(v,x)
% 2*x + y*2i = 2*z

syms z
f(z)=z^2
dfz=diff(f,z)
% 2*z
