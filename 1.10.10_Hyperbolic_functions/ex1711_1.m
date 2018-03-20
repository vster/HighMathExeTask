syms x;

z1=cosh(x)^3
z2=1/4*cosh(3*x)+3/4*cosh(x)

z1=rewrite(z1,'exp')
z1=expand(z1)
z2=rewrite(z2,'exp')

c=z1-z2