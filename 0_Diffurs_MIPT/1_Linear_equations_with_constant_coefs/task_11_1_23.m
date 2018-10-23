clear
syms x y(x)
eqn=diff(y,x,3)-9*diff(y,x,2)+diff(y,x)-9*y-(164*sin(x)+18*x*exp(3*x)+11/36*exp(-9*x))
ySol=simplify(dsolve(eqn))
% (13*exp(3*x))/100 - (11*exp(-9*x))/53136 + (40*cos(x))/41 - (378*sin(x))/41 - (3*x*exp(3*x))/10 + C36*cos(x) + C37*sin(x) + 9*x*cos(x) - x*sin(x) + C38*exp(9*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0