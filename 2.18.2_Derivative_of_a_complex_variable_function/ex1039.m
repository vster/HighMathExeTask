% u=2^x*cos(y*log(2))
% f(z)-?

syms x y real
u=2^x*cos(y*log(sym(2)))
dux=diff(u,x)
% 2^x*log(2)*cos(y*log(2)) = du/dx = dv/dy
v=int(dux,y)
% 2^x*sin(y*log(2))
syms phi(x)
v=v+phi(x)
% phi(x) + 2^x*sin(y*log(2))

% du/dy=-dv/dx
dvx=diff(v,x)
% diff(phi(x), x) + 2^x*log(2)*sin(y*log(2)) = dv/dx
% du/dy=-2^x*log(2)*sin(y*log(2))-phi'(x)
duy=diff(u,y)
% -2^x*log(2)*sin(y*log(2))
% phi'(x)=0 => phi(x)=C
syms C
v=subs(v,phi(x),C)
% C + 2^x*sin(y*log(2))

f=u+i*v
% C*1i + 2^x*cos(y*log(2)) + 2^x*sin(y*log(2))*1i
syms z C1
f=2^z+C1
f=expand(subs(f,z,x+i*y))
% C1 + 2^(y*1i)*2^x
% C1 + exp(y*1i*log(2))*2^x
% C1 + 2^x*cos(y*log(2))+2^x*sin(y*log(2))*1i