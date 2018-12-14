clear
syms x y(x)
eqn=(2*x-3)*diff(y,x,3)-(6*x-7)*diff(y,x,2)+4*x*diff(y,x)-4*y
ySol=simplify(dsolve(eqn))
% (C6*x)/2 + C4*exp(x) + C5*exp(2*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end