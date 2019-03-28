clear
syms t p a b
f=cos(2*t)*sin(3*t)
F=laplace(f,t,p)
% 1/(2*(p^2 + 1)) + 5/(2*(p^2 + 25))