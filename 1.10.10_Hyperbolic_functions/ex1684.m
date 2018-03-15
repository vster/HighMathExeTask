syms x;

eq1=sinh(i*x)
eq1=rewrite(eq1,'exp')
eq1=rewrite(eq1,'sin')
% sinh(x*i)=i*sin(x)

eq2=cosh(i*x)
eq2=rewrite(eq2,'exp')
eq2=rewrite(eq2,'cos')
% cosh(x*i)=cos(x)

