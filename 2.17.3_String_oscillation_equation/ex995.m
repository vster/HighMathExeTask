% d2u/dt2=d2u/dx2
% t=pi
% u(t=0)=sin(x)
% du/dt(t=0)=cos(x)

% u=(phi(x-a*t)+phi(x+a*t))/2+1/(2*a)*int(x-a*t:x+a*t)psi(z)dz

% 1)
% a=1
syms t x z
t1=pi
u=(sin(x-t)+sin(x+t))/2+1/2*int(cos(z),z,x-t,x+t)
% sin(t + x)/2 - sin(t - x)/2 + cos(x)*sin(t)
u=simplify(u)
% sin(t + x)
u1=subs(u,t,t1)
% -sin(x)

% 2) OperCalc
syms t x p u(x,t) a
eq1=diff(u,t,2)-diff(u,x,2)
eq2=laplace(eq1,t,p)
% p^2*laplace(u(x, t), t, p) - p*u(x, 0) - subs(diff(u(x, t), t), t, 0) - laplace(diff(u(x, t), x, x), t, p)
syms U(x)
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0) subs(diff(u(x, t), t), t, 0)],...
      [diff(U(x),x,2) U(x) sin(x) cos(x)])
% U(x)*p^2 - sin(x)*p - cos(x) - diff(U(x), x, x)

U1=dsolve(eq3)
% sin(x)/(2*p) + C24*exp(-p*x) + C25*exp(p*x) + (sin(x)*p^2 + 2*cos(x)*p - sin(x))/(2*p*(p^2 + 1))
U2=sin(x)/(2*p) + (sin(x)*p^2 + 2*cos(x)*p - sin(x))/(2*p*(p^2 + 1))
U2=simplify(U2)
% (cos(x) + p*sin(x))/(p^2 + 1)

u2=ilaplace(U2,p,t)
% cos(t)*sin(x) + cos(x)*sin(t)
u3=subs(u2,t,t1)
% -sin(x)
