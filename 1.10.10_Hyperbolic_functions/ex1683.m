syms x a;
% sinh(x+a) = sinh(x)*cosh(a)+cosh(x)*sinh(a)
eq1=sinh(x+a)-(sinh(x)*cosh(a)+cosh(x)*sinh(a))

diff(eq1)
% cosh(a + x) = sinh(a)*sinh(x) + cosh(a)*cosh(x)