% x, x^2, x^3, x^4
clear
syms x
F=[x,x^2,x^3,x^4]
W=[F;diff(F,x);diff(F,x,2);diff(F,x,3)]
Det_W=simplify(det(W))
% 12*x^4