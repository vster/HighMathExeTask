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

% 2)
clear
% 4*x*y'+3*y=-exp(x)*x^4*y^5
syms x y dy
% We have the Bernoulli equation with m=5
% z=y^(1-m)=y^(-4)
z=y^(-4)
dz=diff(z,y)
% -4/y^5 = dz => 1/y^5=-dz/4

% 4*y'/y^5+3/(x*y^4)=-exp(x)*x^3
% dz-3*z/x=exp(x)*x^3
% We have the linear equation
a(x)=-3/x
f(x)=exp(x)*x^3
u(x)=exp(int(a(x),x))
% 1/x^3

syms C
z(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% x^3*(C + exp(x))
y=1/z^(1/4)
% 1/(x^3*(C + exp(x)))^(1/4)