% w=2*z+1
% x^2+y^2=1 -> uOv
clear
syms z
w=2*z+1
syms x y real
w1=expand(subs(w,z,x+i*y))
u=real(w1)
% 2*x + 1
v=imag(w1)
% 2*y

syms u v
x1=(u-1)/2
y1=v/2

eq1=x^2+y^2-1
eq2=subs(eq1,[x y],[x1 y1])
% (u/2 - 1/2)^2 + v^2/4 - 1
% (u-1)^2+v^2=4