% Solve equation
% 2*y=2*x^2+4*x*y'+(y')^2

% 1)
clear
syms x y(x)
eqn=2*y==2*x^2+4*x*diff(y(x))+diff(y(x))^2
ySol=dsolve(eqn)
%                    -x^2
% C12^2/2 + C12*x - x^2/2

% Checking
for i=1:2
eqn10=2*y-(2*x^2+4*x*diff(y(x))+diff(y(x))^2)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]