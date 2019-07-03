clear
% J(y)=int(x0:x1)(y^2+1)dx
% y(x0)=y(x1)=0

% F=F(y)
% dF/dy=0
syms x y
F=y^2+1
dFdy=diff(F,y)
% 2*y=0
% y=0