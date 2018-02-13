syms t a;
x=a*cos(t)
y=a*sin(t)
z=exp(x^2+y^2)
dzt=simplify(diff(z,t))