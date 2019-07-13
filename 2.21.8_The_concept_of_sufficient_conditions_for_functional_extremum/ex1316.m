clear
% J(y)=int(0:2)yd^2*dx
% y(0)=0
% y(2)=3

syms x y yd
F=yd^2

% y'=yd=dy/dx
syms x y yd
F=yd^2
Fyd=diff(F,yd)
% 2*yd
F2yd=diff(F,yd,2)
% 2 > 0 for any yl 
% then a weak minimum is realized

syms x y(x)
eq1=diff(y,x,2)
cond=[y(0)==0 y(2)==3]
y2=dsolve(eq1,cond)
% (3*x)/2