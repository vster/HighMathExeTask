% Find all solutions of the differential equation
% y=2*x*y'-3*(y')^2

% Lagrange's equation
clear
syms x y(x)
eqn=y==2*x*diff(y(x))-3*diff(y(x))^2
ySol=dsolve(eqn)
%                                                                   0
% root(z^3 - (x^2*z^2)/4 - (9*C26*x*z)/2 + C26*x^3 + (27*C26^2)/4, z)

% Checking
for i=1:2
eqn10=y-2*x*diff(y(x))+3*diff(y(x))^2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
disp(chk')