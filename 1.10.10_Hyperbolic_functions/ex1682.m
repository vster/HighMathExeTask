syms x a;
% sinh(x+a) = cosh(a)*sinh(x) + sinh(a)*cosh(x)
eq1=sinh(x+a)
expand(eq1)

eq2=cosh(a)*sinh(x) + sinh(a)*cosh(x)
simplify(eq2)

