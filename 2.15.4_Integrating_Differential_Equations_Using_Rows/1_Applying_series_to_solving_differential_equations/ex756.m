% Solve equation
% y''-x^2*y=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-x^2*y
ySol=simplify(dsolve(eqn))
% (pi^(1/2)*((C36*pi^(1/2) - 2^(1/2)*C37*gamma(3/4))*besseli(1/4, x^2/2) + 2^(1/2)*C37*gamma(3/4)*besseli(-1/4, x^2/2))*(x^2)^(1/2))/(2*x^(1/2)*gamma(3/4))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0