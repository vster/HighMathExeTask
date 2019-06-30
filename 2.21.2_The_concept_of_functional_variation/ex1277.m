clear
syms x
y(x)=x^2
y1(x)=x^3

d_y=y1-y
% x^3 - x^2
D_J=jfunc(y+d_y)-jfunc(y)
% 6318

D_J_1=jfunc(y1)-jfunc(y)
% 6318

function J=jfunc(y)
syms x
J=int(y^2*diff(y,x),x,0,3);
end