% Find lim (x->0) (2*exp(x)-2-2*x-x^2)/(x-sin(x))

syms x;
f=(2*exp(x)-2-2*x-x^2)/(x-sin(x))

f=(2*taylor(exp(x))-2-2*x-x^2)/(x-taylor(sin(x)))
% (x^5/60 + x^4/12 + x^3/3)/(- x^5/120 + x^3/6)
f=simplify(f)
% -(2*x^2 + 10*x + 40)/(x^2 - 20)
L=limit(f,x,0)
% 2
