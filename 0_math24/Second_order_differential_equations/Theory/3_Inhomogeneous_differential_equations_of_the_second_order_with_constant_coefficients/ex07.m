clear
syms x y(x)
eqn=diff(y,x,2)-7*diff(y,x)+12*y-(8*sin(x)+exp(3*x))
ySol=simplify(dsolve(eqn))
% (4*170^(1/2)*sin(x + atan(7/11)))/85 - x*exp(3*x) - exp(3*x) + C20*exp(4*x) + C21*exp(3*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0