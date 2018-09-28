% Find singular solutions of the equation
% 1+(y')^2=1/y^2

clear
syms x y(x)
eqn=1+diff(y(x))^2==1/y^2
ySol=dsolve(eqn)
%                                     1 - singular solution
%                                    -1 - singular solution
%  (-(C17 + x - 1)*(C17 + x + 1))^(1/2)
% -(-(C17 + x - 1)*(C17 + x + 1))^(1/2)
%   ((C14 - x + 1)*(x - C14 + 1))^(1/2)
%  -((C14 - x + 1)*(x - C14 + 1))^(1/2)