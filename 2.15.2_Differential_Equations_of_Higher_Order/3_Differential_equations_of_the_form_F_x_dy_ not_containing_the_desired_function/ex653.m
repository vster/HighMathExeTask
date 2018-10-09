% Solve equation
% 2*x*y'''*y''=y''^2-a^2

% 1)
clear
syms x a y(x)
assume(y(x),'real')
eqn=2*x*diff(y,x,3)*diff(y,x,2)==diff(y,x,2)^2-a^2
ySol=dsolve(eqn)
%                                   (a*x^2)/2 + C15*x + C16
%                                   C16 + C15*x - (a*x^2)/2
% C16 + C15*x + (4*exp(-C13)*(exp(2*C13)*a^2 + x)^(5/2))/15
% C16 + C15*x - (4*exp(-C13)*(exp(2*C13)*a^2 + x)^(5/2))/15

% Checking
eqn10=2*x*diff(y,x,3)*diff(y,x,2)-(diff(y,x,2)^2-a^2)
for i=1:4
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0, 0]