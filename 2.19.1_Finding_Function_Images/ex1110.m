clear
syms t p a b
f=sinh(a*t)*sinh(b*t)

F=int(exp(-p*t)*f,t,0,inf)
% - limit(exp(-p*t)*(p^3*sinh(a*t)*sinh(b*t) - b^3*cosh(b*t)*sinh(a*t) - a^3*cosh(a*t)*sinh(b*t) + a*b^2*cosh(a*t)*sinh(b*t) + a^2*b*cosh(b*t)*sinh(a*t) + a*p^2*cosh(a*t)*sinh(b*t) + b*p^2*cosh(b*t)*sinh(a*t) - a^2*p*sinh(a*t)*sinh(b*t) - b^2*p*sinh(a*t)*sinh(b*t) + 2*a*b*p*cosh(a*t)*cosh(b*t)), t, Inf)/(a^4 - 2*a^2*b^2 - 2*a^2*p^2 + b^4 - 2*b^2*p^2 + p^4) + (2*a*b*p)/(a^4 - 2*a^2*b^2 - 2*a^2*p^2 + b^4 - 2*b^2*p^2 + p^4)

F=laplace(f,t,p)
% - b/(2*((a + p)^2 - b^2)) - b/(2*(b^2 - (a - p)^2))

f1=simplify(ilaplace(F,p,t))
% exp(t*(a + b))/4 + exp(-t*(a + b))/4 - exp(t*(a - b))/4 - exp(-t*(a - b))/4