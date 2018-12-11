clear
syms x y(x)
eqn=diff(y,x,3)-(x^2-1)
ySol=simplify(dsolve(eqn))
% x^5/60 - x^3/6 + (C32*x^2)/2 + C33*x + C34

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end