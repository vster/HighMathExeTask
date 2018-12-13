clear
syms x y(x)
eqn=diff(y,x,4)+diff(y,x,3)-3*diff(y,x,2)-5*diff(y,x,1)-2*y-(exp(2*x)-exp(-x))
ySol=simplify(dsolve(eqn))
% (exp(-x)*(162*C11 + 6*x - 6*exp(3*x) + 6*x*exp(3*x) + 162*C12*x + 162*C13*x^2 + 9*x^2 + 9*x^3 + 162*C14*exp(3*x) + 2))/162

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end