% Find lim (x->0) (1-cos(x))/(exp(x)-1-x)

syms x;
f=(1-cos(x))/(exp(x)-1-x)

f=(1-taylor(cos(x)))/(taylor(exp(x))-1-x)
% (- x^4/24 + x^2/2)/(x^5/120 + x^4/24 + x^3/6 + x^2/2)
f=simplify(f)
% -(5*x^2 - 60)/(x^3 + 5*x^2 + 20*x + 60)
L=limit(f,x,0)
% 1