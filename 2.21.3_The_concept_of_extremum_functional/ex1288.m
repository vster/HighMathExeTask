clear
% J(y(x))=int(0:1)(2*exp(y)-y^2)dx
% y(0)=1
% y(1)=e

syms x y e
F=2*exp(y)-y^2
dFdy=diff(F,y)
% 2*exp(y) - 2*y

% dF/dy=0
% 2*exp(y) - 2*y
% y=exp(y)
% The last equation does not even have numerical solutions.