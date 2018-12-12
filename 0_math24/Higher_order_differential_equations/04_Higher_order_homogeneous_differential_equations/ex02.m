clear
syms x y(x)
eqn=diff(y,x,3)-7*diff(y,x,2)+11*diff(y,x)-5*y
ySol=simplify(dsolve(eqn))
% exp(x)*(C4 + C5*x + C6*exp(4*x))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end