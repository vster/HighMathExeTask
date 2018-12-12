clear
syms x y(x)
eqn=diff(y,x,4)-diff(y,x,3)+2*diff(y,x)
ySol=simplify(dsolve(eqn))
% C7 + C10*exp(-x) + C8*exp(x)*cos(x) + C9*exp(x)*sin(x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))    
end