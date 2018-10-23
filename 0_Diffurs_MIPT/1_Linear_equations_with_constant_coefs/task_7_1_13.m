clear
syms x y(x)
eqn=diff(y,x,3)+5*diff(y,x,2)+9*diff(y,x)+5*y-(2*exp(-x)+5*x+4)
ySol=simplify(dsolve(eqn))
% x - exp(-x) + x*exp(-x) + C26*exp(-x) + C24*exp(-2*x)*cos(x) + C25*exp(-2*x)*sin(x) - 1

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0