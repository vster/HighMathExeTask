clear
syms x y(x)
eqn=diff(y,x,2)-5*diff(y,x)+4*y-exp(4*x)
ySol=simplify(dsolve(eqn))
% (exp(x)*(9*C13 - exp(3*x) + 3*x*exp(3*x) + 9*C12*exp(3*x)))/9

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0