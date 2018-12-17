% w=-z^2
% x+y=1

clear
syms z
w=-z^2
syms x y real
w=expand(subs(w,z,x+i*y))
% - x^2 - x*y*2i + y^2
u=real(w)
% y^2 - x^2
v=imag(w)
% -2*x*y

% x+y=1
u1=simplify(subs(u,y,1-x))
% 1 - 2*x
v1=simplify(subs(v,y,1-x))
% 2*x*(x - 1)
syms v u
v1=simplify(subs(v1,x,(1-u)/2))
% v=u^2/2 - 1/2