% 1)
clear
syms x y(x)
eqn=diff(y,x,3)+3*diff(y,x,2)+diff(y,x)-5*y-(10*exp(x)-5*x)
ySol=simplify(dsolve(eqn))
% x - (3*exp(x))/5 + C29*exp(x) + x*exp(x) + C27*exp(-2*x)*cos(x) + C28*exp(-2*x)*sin(x) + 1/5

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0