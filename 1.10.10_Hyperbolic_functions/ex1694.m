syms x a;
y1=sinh(x-a)
y1=expand(y1)
% cosh(a)*sinh(x) - sinh(a)*cosh(x)

y2=cosh(x-a)
y2=expand(y2)
% cosh(a)*cosh(x) - sinh(a)*sinh(x)
