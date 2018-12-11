clear
syms x y(x)
eqn=diff(y,x,2)^2-diff(y,x,2)^3-x
ySol=simplify(dsolve(eqn))
% C44 + C43*x + (root(z^3 - z^2 + x, z, 1)*x^2)/2

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end