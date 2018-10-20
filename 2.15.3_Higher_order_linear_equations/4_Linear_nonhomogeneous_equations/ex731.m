% Find a solution to the equation 
% y''-(alfa+beta)*y'+alfa*beta*y=a*exp(alfa*x)+b*exp(beta*x)

% 1)
clear
syms x y(x) alfa beta a b
eqn=diff(y,x,2)-(alfa+beta)*diff(y,x)+alfa*beta*y==a*exp(alfa*x)+b*exp(beta*x)
ySol=simplify(dsolve(eqn))
% C3*exp(alfa*x) + C4*exp(beta*x) + exp(alfa*x)*((a*x)/(alfa - beta) - (b*exp(-x*(alfa - beta)))/(alfa - beta)^2) - (exp(beta*x)*(a*exp(x*(alfa - beta)) + alfa*b*x - b*beta*x))/(alfa - beta)^2
pretty(ySol)

% Checking
eqn10=diff(y,x,2)-(alfa+beta)*diff(y,x)+alfa*beta*y-(a*exp(alfa*x)+b*exp(beta*x))
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0