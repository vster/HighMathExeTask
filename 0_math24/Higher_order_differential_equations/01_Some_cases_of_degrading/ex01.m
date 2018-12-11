clear
syms x y(x)
eqn=diff(y,x,3)+2/x*diff(y,x,2)
ySol=simplify(dsolve(eqn))
% C6 + C8*x - C7*log(x)

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0