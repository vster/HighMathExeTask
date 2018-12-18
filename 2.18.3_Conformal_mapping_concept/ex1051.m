% y=x^2
% w=z^2

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

% u=x^2-y^2=x^2-x^4
% v=2*x^3 => x=(v/2)^(1/3)

% u=(v/2)^(2/3)-(v/2)^(4/3)