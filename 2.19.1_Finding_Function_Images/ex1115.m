clear
syms t p a b real
f=sinh(a*t)*cos(b*t)
F=int(exp(-p*t)*f,t,0,inf)
% - (a^3 + a*b^2 - a*p^2)/(a^4 + 2*a^2*b^2 - 2*a^2*p^2 + b^4 + 2*b^2*p^2 + p^4) + limit((cos(p*t*1i) + sin(p*t*1i)*1i)*(a^3*cos(a*t*1i)*cos(b*t) + p^3*cos(b*t)*sin(a*t*1i)*1i - b^3*sin(a*t*1i)*sin(b*t)*1i + a*b^2*cos(a*t*1i)*cos(b*t) - a*p^2*cos(a*t*1i)*cos(b*t) - a^2*p*cos(b*t)*sin(a*t*1i)*1i + b^2*p*cos(b*t)*sin(a*t*1i)*1i - a^2*b*sin(a*t*1i)*sin(b*t)*1i - b*p^2*sin(a*t*1i)*sin(b*t)*1i + 2*a*b*p*cos(a*t*1i)*sin(b*t)), t, Inf)/(a^4 + 2*a^2*b^2 - 2*a^2*p^2 + b^4 + 2*b^2*p^2 + p^4)
F=laplace(f,t,p)
% - (a - p)/(2*(b^2 + (a - p)^2)) - (a + p)/(2*((a + p)^2 + b^2))