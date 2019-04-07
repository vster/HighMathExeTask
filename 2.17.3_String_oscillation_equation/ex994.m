% d2u/dt2=a^2*d2u/dx2
% u(t=0)=0 
% du/dt(t=0)=cos(x)

% 1)
% u=(phi(x-a*t)+phi(x+a*t))/2+1/(2*a)*int(x-a*t:x+a*t)psi(z)dz
syms a x t
phi=0
psi=cos(x)

syms z
u=1/(2*a)*int(cos(z),z,x-a*t,x+a*t)
% (sin(a*t)*cos(x))/a

% 2) OperCalc
syms t x p u(x,t) a
eq1=diff(u,t,2)-a^2*diff(u,x,2)
eq2=laplace(eq1,t,p)
% p^2*laplace(u(x, t), t, p) - p*u(x, 0) - a^2*laplace(diff(u(x, t), x, x), t, p) - subs(diff(u(x, t), t), t, 0)
syms U(x)
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0) subs(diff(u(x, t), t), t, 0)],...
      [diff(U(x),x,2) U(x) 0 cos(x)])
% - diff(U(x), x, x)*a^2 + U(x)*p^2 - cos(x)

U1=dsolve(eq3)
% C22*exp(-(p*x)/a) + C23*exp((p*x)/a) + (sin(x) + (p*cos(x))/a)/(2*a*p*(p^2/a^2 + 1)) - (sin(x) - (p*cos(x))/a)/(2*a*p*(p^2/a^2 + 1))
U2=(sin(x) + (p*cos(x))/a)/(2*a*p*(p^2/a^2 + 1)) - (sin(x) - (p*cos(x))/a)/(2*a*p*(p^2/a^2 + 1))
U2=simplify(U2)
% cos(x)/(a^2 + p^2)

u2=ilaplace(U2,p,t)
% (sin(a*t)*cos(x))/a
  