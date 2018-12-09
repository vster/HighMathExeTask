% u=x^2-y^2-x
% f(z)
% z=x+y*i
% Find f(z)

syms x y real
u=x^2-y^2-x
dux=diff(u,x)
% 2*x-1 = du/dx = dv/dy
v=int(dux,y)
% v(x,y)=y*(2*x - 1)+phi(x)
syms phi(x)
v=y*(2*x - 1)+phi(x)

% du/dy=-dv/dx
dvx=diff(v,x)
% 2*y + diff(phi(x), x) = dv/dx 
% du/dy = -2*y-phi'(x)
duy=diff(u,y)
% -2*y = -2*y-phi'(x)
% phi'(x)=0 => phi(x)=C
syms C
v=y*(2*x - 1)+C

f=u+i*v
% C*1i - x + y*(2*x - 1)*1i + x^2 - y^2
f=(x+y*i)^2-(x+y*i)+C*i
syms C1
f=z^2-z+C1