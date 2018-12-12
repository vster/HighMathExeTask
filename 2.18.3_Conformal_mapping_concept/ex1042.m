clear
syms z
w=z^3
% Show y=x
syms x y real
w=expand(subs(w,z,x+i*y))
% x^3 + x^2*y*3i - 3*x*y^2 - y^3*1i
u=real(w)
% x^3 - 3*x*y^2
v=imag(w)
% 3*x^2*y - y^3

v=subs(v,y,x)
% 2*x^3
u=subs(u,y,x)
% -2*x^3
% v=-u

