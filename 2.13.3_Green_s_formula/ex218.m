% Using Green's formula, transform the curvilinear integral
% I =  int (C) (x+log(x^2+y^2))*dx+y*log(x^2+y^2)*dy
% where contour C bounds the domain D

syms x y real;
P=x+log(x^2+y^2)
Q=y*log(x^2+y^2)

f2=diff(Q,x)-diff(P,y)
f2=factor(f2)
% (2*y*(x - 1))/(x^2 + y^2)

% I=int (C) (x+log(x^2+y^2))*dx+y*log(x^2+y^2)*dy = 
%   = int int (D) (2*y*(x - 1))/(x^2 + y^2) dx*dy