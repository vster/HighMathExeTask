% Solve equation
% 2*y*y''=k*y-y'^2
% y(0)=1,y'(0)=0

% 1)
clear
syms x y(x) k
eqn=2*y*diff(y,x,2)==k*y-diff(y,x)^2
Dy(x)=diff(y,x)
cond=[y(0)==1,Dy(0)==0]
ySol=simplify(dsolve(eqn))
% ???

% Checking
eqn10=2*y*diff(y,x,2)-(k*y-diff(y,x)^2)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
%