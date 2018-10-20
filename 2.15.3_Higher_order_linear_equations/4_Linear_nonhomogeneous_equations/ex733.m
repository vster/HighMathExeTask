% Find a solution to the equation 
% y''-9*y'+20*y=x^2*exp(4*x)

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-9*diff(y,x)+20*y==x^2*exp(4*x)
ySol=simplify(dsolve(eqn))
% -(exp(4*x)*(6*x - 3*C8 - 3*C7*exp(x) + 3*x^2 + x^3 + 6))/3

% Checking
eqn10=diff(y,x,2)-9*diff(y,x)+20*y-x^2*exp(4*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0