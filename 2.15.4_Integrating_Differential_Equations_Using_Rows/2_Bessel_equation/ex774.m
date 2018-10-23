clear
syms x y(x)
eqn=x^2*diff(y,x,2)+x*diff(y,x)+(x^2-4/9)*y
ySol=simplify(dsolve(eqn))
% (C21 + (3^(1/2)*C22)/3)*besselj(-2/3, x) + (2*3^(1/2)*C22*besselj(2/3, x))/3

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0