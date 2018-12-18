% w=(1+i)*z+(1-i)
% y=1,y=x-1

clear
syms z
w=(1+i)*z+(1-i)
syms x y real
w=expand(subs(w,z,x+i*y))
% x*(1 + 1i) - y*(1 - 1i) + 1 - 1i
u=real(w)
% x - y + 1
v=imag(w)
% x + y - 1

% y=1,y=x-1
% k1=0,k2=1
% tan_alfa1=|(k2-k1)/(1+k1*k2)|=|1/1|=1

% y=1
u1=subs(u,y,1)
% x
v1=subs(v,y,1)
% x
% v=u

% y=x-1
u1=subs(u,y,x-1)
% 2
v1=subs(v,y,x-1)
% 2*x-2
% u=2

% tan_alfa2=|(k2-k1)/(1+k1*k2)|=|1/1|=1