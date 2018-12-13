clear
syms x y(x)
eqn=diff(y,x,3)+3*diff(y,x,2)-10*diff(y,x)-(x-3)
ySol=simplify(dsolve(eqn))
% C1 + (27*x)/100 - x^2/20 + C2*exp(2*x) + C3*exp(-5*x) + 71/1000

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end