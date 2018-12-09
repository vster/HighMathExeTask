% v=x+y
% find f(z)

syms x y
v=x+y
dvy=diff(v,y)
% 1 = dv/dy=du/dx=1
syms phi(y)
u=x+phi(y)
duy=diff(u,y)
% diff(phi(y), y)=du/dy=-dv/dx
dvx=diff(v,x)
% 1
% diff(phi(y), y) = -1 => phi(y)=-y+C
syms C
u=x-y+C

f=u+i*v
% C + x*(1 + 1i) - y*(1 - 1i)
% f=(1+i)*(x+y*i)+C
% f(z)=(1+1i)*Z+C
