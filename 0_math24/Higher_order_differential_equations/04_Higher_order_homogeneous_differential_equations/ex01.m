clear
syms x y(x)
eqn=diff(y,x,3)+2*diff(y,x,2)-diff(y,x)-2*y
ySol=simplify(dsolve(eqn))
% C2*exp(x) + C1*exp(-2*x) + C3*exp(-x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end