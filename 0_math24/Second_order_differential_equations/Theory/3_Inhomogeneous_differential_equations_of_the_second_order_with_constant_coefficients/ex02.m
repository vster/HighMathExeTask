clear
syms x y(x)
eqn=diff(y,x,2)+diff(y,x)-6*y-36*x
ySol=simplify(dsolve(eqn))
% C10*exp(2*x) - 6*x + C11*exp(-3*x) - 1

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0