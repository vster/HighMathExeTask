% Solve equation
% y''*(1+y)=y'^2+y'

% 1)
clear
syms x real
syms y(x)
assume(y(x),'real')
eqn=diff(y,x,2)*(1+y)==diff(y,x)^2+diff(y,x)
ySol=simplify(dsolve(eqn))
%                            C54
% (C53*exp(C51*x) - C51 + 1)/C51

% Checking
eqn10=diff(y,x,2)*(1+y)-(diff(y,x)^2+diff(y,x))
for i=1:length(ySol)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
%[ 0, 0]