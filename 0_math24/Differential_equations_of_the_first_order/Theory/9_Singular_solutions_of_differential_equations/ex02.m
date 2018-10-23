% Find singular solutions of the equation
% y=(y')^2-3*x*y'+3*x^2

clear
syms x y(x)
eqn=y==diff(y(x))^2-3*x*diff(y(x))+3*x^2
ySol=dsolve(eqn)
%           (3*x^2)/4 - singular solution
% C19^2 + C19*x + x^2

% Checking
for i=1:2
eqn10=y-(diff(y(x))^2-3*x*diff(y(x))+3*x^2)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]