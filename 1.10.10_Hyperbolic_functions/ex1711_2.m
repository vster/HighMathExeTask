syms x;

z1=sinh(x)^5
z2=1/16*sinh(5*x)-5/16*sinh(3*x)+5/8*sinh(x)

z1=rewrite(z1,'exp')
z1=expand(z1)
z2=rewrite(z2,'exp')

c=z1-z2