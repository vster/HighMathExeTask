clear
syms x y(x)
eqn=diff(y,x,3)-3*diff(y,x,2)+3*diff(y,x)-y-(6*exp(x)+x)
ySol=simplify(dsolve(eqn))
% x^3*exp(x) - x + C18*exp(x) + C20*x^2*exp(x) + C19*x*exp(x) - 3

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0