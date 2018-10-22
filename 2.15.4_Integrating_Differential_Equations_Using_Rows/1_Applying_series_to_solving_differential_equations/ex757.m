% Solve equation
% y''+x*y=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+x*y
ySol=simplify(dsolve(eqn))
% C38*airy(0, -x) + C39*airy(2, -x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0