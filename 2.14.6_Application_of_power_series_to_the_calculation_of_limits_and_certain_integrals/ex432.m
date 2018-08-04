% Find lim (x->0) (x-atan(x))/x^3

syms x real;
f=(x-atan(x))/x^3

f=(x-taylor(atan(x)))/x^3
% (- x^5/5 + x^3/3)/x^3
f=simplify(f)
% 1/3 - x^2/5
L=limit(f,x,0)
% 1/3