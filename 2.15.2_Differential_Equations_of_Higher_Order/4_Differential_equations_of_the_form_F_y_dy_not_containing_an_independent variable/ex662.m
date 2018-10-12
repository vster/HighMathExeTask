% Solve equation
% y*y''-y'^2=y^2*log(y)

% 1)
clear
syms x real
syms y(x)
assume(y(x),'real')
eqn=y*diff(y,x,2)-diff(y,x)^2==y^2*log(y)
ySol=simplify(dsolve(eqn))
% exp(-(exp(- x - (2^(1/2)*C41)/2)*(C38 - exp(2*x + 2^(1/2)*C41)))/2)

% Checking
eqn10=y*diff(y,x,2)-diff(y,x)^2-y^2*log(y)
for i=1:length(ySol)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end