% Solve equation
% y*(1-log(y))*y''+(1+log(y))*y'^2=0

% 1)
clear
syms x y(x)
eqn=y*(1-log(y))*diff(y,x,2)+(1+log(y))*diff(y,x)^2==0
ySol=simplify(dsolve(eqn))
%                      C50
%                   exp(1)
% exp(1 - 1/(C48 + C46*x))

% Checking
eqn10=y*(1-log(y))*diff(y,x,2)+(1+log(y))*diff(y,x)^2
for i=1:3
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, (2*C46^2*exp(2 - 2/(C48 + C46*x))*(C48*log(exp(1 - 1/(C48 + C46*x))) - C46*x - C48 + C46*x*log(exp(1 - 1/(C48 + C46*x))) + 1))/(C48 + C46*x)^4]