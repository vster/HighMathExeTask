clear
syms t p a b
f=cosh(a*t)*cos(b*t)

F=int(exp(-p*t)*f,t,0,inf)
% (- a^2*p + b^2*p + p^3)/(a^4 + 2*a^2*b^2 - 2*a^2*p^2 + b^4 + 2*b^2*p^2 + p^4) - limit((cos(t*p*1i) + sin(t*p*1i)*1i)*(p^3*cos(t*a*1i)*cos(t*b) + a^3*cos(t*b)*sin(t*a*1i)*1i - b^3*cos(t*a*1i)*sin(t*b) - a^2*p*cos(t*a*1i)*cos(t*b) + b^2*p*cos(t*a*1i)*cos(t*b) + a*b^2*cos(t*b)*sin(t*a*1i)*1i - a^2*b*cos(t*a*1i)*sin(t*b) - a*p^2*cos(t*b)*sin(t*a*1i)*1i - b*p^2*cos(t*a*1i)*sin(t*b) + a*b*p*sin(t*a*1i)*sin(t*b)*2i), t, Inf)/(a^4 + 2*a^2*b^2 - 2*a^2*p^2 + b^4 + 2*b^2*p^2 + p^4)

F=laplace(f,t,p)
% (a + p)/(2*((a + p)^2 + b^2)) - (a - p)/(2*(b^2 + (a - p)^2))

f1=simplify(ilaplace(F,p,t))
% cosh(a*t)*cos(b*t)
