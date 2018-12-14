% 1, x^2, exp(x)
clear
syms x y(x)
F=[1,x^2,exp(x),y(x)]
E=[F;diff(F,x);diff(F,x,2);diff(F,x,3)]
det_E=simplify(det(E))
% -2*exp(x)*(x*diff(y(x), x, x) - x*diff(y(x), x, x, x) - diff(y(x), x) + diff(y(x), x, x, x))
% x*y''-x*y'''-y'+y'''=0
% (x-1)*y'''-x*y''+y'=0
