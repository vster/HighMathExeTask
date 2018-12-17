% w=z^2
% x=2,y=1
clear
syms z
w=z^2
syms x y real
w=expand(subs(w,z,x+i*y))
% x^2 + x*y*2i - y^2
u=real(w)
% x^2 - y^2
v=imag(w)
% 2*x*y

% x=2
u1=subs(u,x,2)
% 4 - y^2
v1=subs(v,x,2)
% 4*y
% u=4-v^2/16

% y=1
u2=subs(u,y,1)
% x^2 - 1
v2=subs(v,y,1)
% 2*x
% u=v^2/4-1