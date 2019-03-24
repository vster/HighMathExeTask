clear
syms t p a b
f=cosh(a*t)*sinh(b*t)

F=int(exp(-p*t)*f,t,0,inf)
% - limit(exp(-p*t)*(p^3*cosh(a*t)*sinh(b*t) - b^3*cosh(a*t)*cosh(b*t) - a^3*sinh(a*t)*sinh(b*t) + a^2*b*cosh(a*t)*cosh(b*t) + b*p^2*cosh(a*t)*cosh(b*t) - a^2*p*cosh(a*t)*sinh(b*t) - b^2*p*cosh(a*t)*sinh(b*t) + a*b^2*sinh(a*t)*sinh(b*t) + a*p^2*sinh(a*t)*sinh(b*t) + 2*a*b*p*cosh(b*t)*sinh(a*t)), t, Inf)/(a^4 - 2*a^2*b^2 - 2*a^2*p^2 + b^4 - 2*b^2*p^2 + p^4) + (a^2*b - b^3 + b*p^2)/(a^4 - 2*a^2*b^2 - 2*a^2*p^2 + b^4 - 2*b^2*p^2 + p^4)

F=laplace(f,t,p)
% (b - p)/(2*(a^2 - (b - p)^2)) - (b + p)/(2*((b + p)^2 - a^2))

f1=simplify(ilaplace(F,p,t))
% exp(t*(a + b))/4 - exp(-t*(a + b))/4 - exp(t*(a - b))/4 + exp(-t*(a - b))/4