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

syms C1 C2 C3 C4
cond=[C1,C2,C3]
ySol2=opercalc2(eqn,cond)
% x^3*exp(x) - x + exp(x)*(C1 + 3) + (x^2*exp(x)*(C1 - 2*C2 + C3 + 1))/2 - x*exp(x)*(C1 - C2 + 2) - 3