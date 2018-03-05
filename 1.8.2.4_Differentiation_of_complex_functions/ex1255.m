syms t a;
f(t)=a*cos(t)
g(t)=a*sin(t)
z=exp(f^2+g^2)
dzt=simplify(diff(z,t))