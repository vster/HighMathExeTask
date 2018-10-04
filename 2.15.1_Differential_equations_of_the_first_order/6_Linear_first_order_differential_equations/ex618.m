% Solve equation
% y'+2*y/x=2*sqrt(y)/cos(x)^2

% 1)
clear
syms x y(x)
eqn=diff(y)+2*y/x-2*sqrt(y)/cos(x)^2==0
ySol=simplify(dsolve(eqn))
%                                    0
% (C20 + log(cos(x)) + x*tan(x))^2/x^2

% Checking
eqn10=diff(y)+2*y/x-2*sqrt(y)/cos(x)^2
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
pretty(chk)