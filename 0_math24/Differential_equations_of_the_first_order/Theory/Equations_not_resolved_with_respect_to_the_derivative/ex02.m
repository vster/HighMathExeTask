% Find the general solution of the differential equation
% y=log(25+(y')^2)

% 1)
clear
% y=log(25+(y')^2
syms x y(x)
eqn=y==log(25+diff(y(x))^2)
ySol=dsolve(eqn)
%                          2*log(5)
%  log(25*tan(C7 + (5*x)/2)^2 + 25)
% log(25*tan(C10 - (5*x)/2)^2 + 25)