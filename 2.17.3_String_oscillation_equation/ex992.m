% d2u/dt2=a^2*d2u/dx2
% t=pi/(2*a)
% u(t=0)=sin(x)
% du/dt(t=0)=1

% 1)
clear
syms a t x
t1=pi/(2*a)
% phi=sin(x)
% psi=1
syms z
u=(sin(x+a*t)+sin(x-a*t))/2+1/(2*a)*int(1,z,x-a*t,x+a*t)
% t + sin(x + a*t)/2 + sin(x - a*t)/2
u1=simplify(subs(u,t,t1))
% pi/(2*a)

% 2) OperCalc
syms t x p u(x,t) a
eq1=diff(u,t,2)-a^2*diff(u,x,2)
eq2=laplace(eq1,t,p)
% p^2*laplace(u(x, t), t, p) - p*u(x, 0) - a^2*laplace(diff(u(x, t), x, x), t, p) - subs(diff(u(x, t), t), t, 0)
syms U(x)
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0) subs(diff(u(x, t), t), t, 0)],...
      [diff(U(x),x,2) U(x) sin(x) 1])
% - diff(U(x), x, x)*a^2 + U(x)*p^2 - sin(x)*p - 1

U1=dsolve(eq3)
% C18*exp(-(p*x)/a) + C19*exp((p*x)/a) + (a^2 + cos(x)*a*p^2 + sin(x)*p^3 + p^2)/(2*p^2*(a^2 + p^2)) + (a^2 - cos(x)*a*p^2 + sin(x)*p^3 + p^2)/(2*p^2*(a^2 + p^2))
U1=(a^2 + cos(x)*a*p^2 + sin(x)*p^3 + p^2)/(2*p^2*(a^2 + p^2)) + (a^2 - cos(x)*a*p^2 + sin(x)*p^3 + p^2)/(2*p^2*(a^2 + p^2))
U2=simplify(U1)
% (a^2 + sin(x)*p^3 + p^2)/(p^2*(a^2 + p^2))

u2=ilaplace(U2,p,t)
% t + cos(a*t)*sin(x)
u3=subs(u2,t,pi/(2*a))
% pi/(2*a)