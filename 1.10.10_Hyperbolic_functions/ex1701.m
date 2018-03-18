syms x y;

z1=sinh(x)*cosh(y)

expand(sinh(x+y))
expand(sinh(x-y))
expand((sinh(x+y)+sinh(y-x))/2)
expand((sinh(x+y)-sinh(y-x))/2)
% cosh(y)*sinh(x) = (sinh(x+y)-sinh(y-x))/2

expand(cosh(x+y))
expand(cosh(x-y))
expand((cosh(x+y)+cosh(y-x))/2)
expand((cosh(x+y)-cosh(y-x))/2)
% cosh(x)*cosh(y) = (cosh(x+y)+cosh(y-x))/2
% sinh(x)*sinh(y) = (cosh(x+y)-cosh(y-x))/2

