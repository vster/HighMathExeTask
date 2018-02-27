syms a b;

p=(5*a+3*b)*(2*a-b)
p=expand(p)

p=subs(p,a*b,0)
p=subs(p,a,2)
p=subs(p,b,3)

