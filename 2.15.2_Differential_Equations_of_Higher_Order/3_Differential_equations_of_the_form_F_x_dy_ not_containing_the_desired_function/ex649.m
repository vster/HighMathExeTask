% Solve equation
% x*y''=y'*log(y'/x)

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=x*diff(y,x,2)==diff(y,x)*log(diff(y,x)/x)
ySol=dsolve(eqn)
%                                   (exp(1)*x^2)/2 + C7
% C7 + exp(-2*C5)*exp(1)*exp(x*exp(C5))*(x*exp(C5) - 1)

% Checking
eqn10=x*diff(y,x,2)-diff(y,x)*log(diff(y,x)/x)
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
pretty(chk(2))
% x*(x*exp(C5 + x*exp(C5) + 1) - (x*exp(C5))*exp(x*exp(C5) + 1))
% [0,0]
