% u=sin(x)*sinh(y)
% f(z)-?

syms x y real
u=sin(x)*sinh(y)
dux=diff(u,x)
% cos(x)*sinh(y) = du/dx = dv/dy
v=int(dux,y)
% cos(x)*cosh(y)
syms phi(x)
v=cos(x)*cosh(y)+phi(x)

% du/dy=-dv/dx
dvx=diff(v,x)
% diff(phi(x), x) - cosh(y)*sin(x) =dv/dx
% du/dy=cosh(y)*sin(x)-phi'(x)
duy=diff(u,y)
% cosh(y)*sin(x)
% phi'(x)=0 => phi(x)=C
syms C
v=cos(x)*cosh(y)+C

f=u+i*v
% cos(x)*cosh(y)*1i + sin(x)*sinh(y) + C*1i
syms z C1
f=i*cos(z)+C1
f1=expand(subs(f,z,x+i*y))