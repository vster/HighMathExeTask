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

% Checking
for i=1:6
eqn10=1+diff(y(x))^2-1/y^2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0, 0, 0, 0]