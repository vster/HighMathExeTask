syms x t a;
u=1/sqrt(t)*exp(-x^2/(4*a^2*t))
e1=simplify(diff(u,t))
% -(exp(-x^2/(4*a^2*t))*(2*t*a^2 - x^2))/(4*a^2*t^(5/2))
pretty(e1)
e2=simplify(a^2*diff(u,x,2))
% -(exp(-x^2/(4*a^2*t))*(2*t*a^2 - x^2))/(4*a^2*t^(5/2))
pretty(e2)