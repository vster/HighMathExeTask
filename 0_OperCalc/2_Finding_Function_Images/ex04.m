clear
syms t p a b
f=sinh(a*t)*sin(b*t)
F=laplace(f,t,p)
% b/(2*(b^2 + (a - p)^2)) - b/(2*((a + p)^2 + b^2))
F=collect(F)
% (2*a*b*p)/(p^4 + (2*b^2 - 2*a^2)*p^2 + a^4 + 2*a^2*b^2 + b^4)
