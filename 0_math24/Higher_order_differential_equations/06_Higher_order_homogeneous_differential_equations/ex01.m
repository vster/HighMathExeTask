% x,sin(x),cos(x)
clear
syms x
F=[x,sin(x),cos(x)]
W=[F;diff(F,x);diff(F,x,2)]
Det_W=simplify(det(W))
% -x /=0