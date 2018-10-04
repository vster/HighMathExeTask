% Solve equation
% 4*x*y'+3*y=-exp(x)*x^4*y^5

% 1)
clear
syms x y(x)
eqn=4*x*diff(y)+3*y==-exp(x)*x^4*y^5
ySol=simplify(dsolve(eqn))
%                              0
%   1/(x^3*(C22 + exp(x)))^(1/4)
%  -1/(x^3*(C22 + exp(x)))^(1/4)
%  1i/(x^3*(C22 + exp(x)))^(1/4)
% -1i/(x^3*(C22 + exp(x)))^(1/4)

% Checking
eqn10=4*x*diff(y)+3*y+exp(x)*x^4*y^5
for i=1:5
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0, 0, 0]
