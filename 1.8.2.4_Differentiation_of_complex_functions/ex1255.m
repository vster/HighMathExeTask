syms t a;
f(t)=a*cos(t)
g(t)=a*sin(t)
z=exp(f^2+g^2)
% exp(a^2*cos(t)^2 + a^2*sin(t)^2)
dzt=simplify(diff(z,t))
% 0