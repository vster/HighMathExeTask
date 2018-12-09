% Is the function differentiable f(z)=exp(x)*cos(y)+1i*exp(x)*sin(y) ?
clear
syms x y real
f=exp(x)*cos(y)+1i*exp(x)*sin(y)
u=real(f)
v=imag(f)

dux=diff(u,x)
% exp(x)*cos(y)
duy=diff(u,y)
% -exp(x)*sin(y)
dvx=diff(v,x)
% exp(x)*sin(y)
dvy=diff(v,y)
% exp(x)*cos(y)
% dux=dvy - correct 
% duy=-dvx - correct

dfz=diff(u,x)+1i*diff(v,x)
% exp(x)*cos(y) + exp(x)*sin(y)*1i = 
% exp(x)*(cos(y)+i*sin(y)) = exp(x)*exp(i*y)=
% exp(x+i*y)=exp(z)

% f(z)=exp(x)*(cos(y)+1i*sin(y))=exp(x+i*y)=exp(z)

syms z
f=exp(z)
dfz=diff(f,z)
% exp(z)