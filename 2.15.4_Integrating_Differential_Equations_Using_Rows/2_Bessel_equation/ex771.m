clear
syms x y(x)
eqn=x^2*diff(y,x,2)+x*diff(y,x)+(x^2-1/4)*y
ySol=simplify(dsolve(eqn))
% (2^(1/2)*(C17*cos(x) + C18*sin(x)))/(x^(1/2)*pi^(1/2))

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0