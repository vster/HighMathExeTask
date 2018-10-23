clear
syms x y(x)
eqn=x^2*diff(y,x,2)+x*diff(y,x)+(x^2-9/4)*y
ySol=simplify(dsolve(eqn))
% (2^(1/2)*C20*(cos(x) - sin(x)/x))/(x^(1/2)*pi^(1/2)) - (2^(1/2)*C19*(sin(x) + cos(x)/x))/(x^(1/2)*pi^(1/2))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0