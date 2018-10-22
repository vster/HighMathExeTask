% Solve equation
% y''-x*y'-2*y=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-x*diff(y,x)-2*y
ySol=simplify(dsolve(eqn))
% ...

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0