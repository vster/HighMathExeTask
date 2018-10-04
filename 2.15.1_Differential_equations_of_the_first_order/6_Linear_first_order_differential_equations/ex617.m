% Solve equation
% y'-y/(x-1)=y^2/(x-1)

% 1)
clear
syms x y(x)
eqn=diff(y)-y/(x-1)-y^2/(x-1)==0
ySol=simplify(dsolve(eqn))
%                                              0
%                                             -1
% (exp(C15)*(x - 1))/(exp(C15) - x*exp(C15) + 1)

% Checking
for i=1:3
chk(i)=simplify(subs(eqn,y(x),ySol(i)))
pretty(chk(i))
end
% [ TRUE, TRUE, TRUE]