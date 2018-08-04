% Find lim (x->0) (sin(x)-atan(x))/x^3

syms x real;
f=(sin(x)-atan(x))/x^3

f=(taylor(sin(x))-taylor(atan(x)))/x^3
% (- (23*x^5)/120 + x^3/6)/x^3
f=simplify(f)
% 1/6 - (23*x^2)/120
L=limit(f,x,0)
% 1/6