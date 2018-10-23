clear
syms x y(x)
eqn=diff(y,x)-(2*x-y)
cond=y(0)==2
ySol=simplify(dsolve(eqn,cond))
% 2*x + 4*exp(-x) - 2

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0