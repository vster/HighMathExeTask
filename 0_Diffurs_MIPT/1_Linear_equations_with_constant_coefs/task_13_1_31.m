clear
syms x y(x)
eqn=diff(y,x,3)-3*diff(y,x)-2*y-(18*(1-x)*exp(-x)+100*cos(2*x))
ySol=simplify(dsolve(eqn))
% -(exp(-x)*(12*x - 9*C42 - 9*C43*x + 9*cos(2*x)*exp(x) + 63*sin(2*x)*exp(x) + 18*x^2 - 9*x^3 - 9*C44*exp(3*x) + 4))/9

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0