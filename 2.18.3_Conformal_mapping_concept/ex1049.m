% w=i*z+1
% x=0, y=0

clear
syms z
w=i*z+1
syms x y real
w=expand(subs(w,z,x+i*y))
% x*1i - y + 1
u=real(w)
% 1 - y
v=imag(w)
% x

% x=0
u1=subs(u,x,0)
% 1-y
v1=subs(v,x,0)
% 0
% Line v=0

% y=0
u1=subs(u,y,0)
% 1
v1=subs(v,y,0)
% x
% Line u=1