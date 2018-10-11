% Solve equation
% y'^2+y*y''=y*y'

% 1)
clear
syms x y(x)
eqn=diff(y,x)^2+y*diff(y,x,2)==y*diff(y,x)
ySol=simplify(dsolve(eqn))
%                         C13
%  (C13 + exp(C15 + x))^(1/2)
% -(C13 + exp(C15 + x))^(1/2)

% Checking
eqn10=diff(y,x)^2+y*diff(y,x,2)-y*diff(y,x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0]