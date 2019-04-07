% d2u/dt2=d2u/dx2
% u(t=0)=x
% du/dt(t=0)=-x

% 1)
% u=(phi(x-a*t)+phi(x+a*t))/2+1/(2*a)*int(x-a*t:x+a*t)psi(z)dz
syms x t z
phi=x
psi=-x
a=1
u=((x-a*t)+(x+a*t))/2+1/(2*a)*int(-z,z,x-a*t,x+a*t)
% x - t*x

% 2) OperCalc
syms t x p u(x,t) a
eq1=diff(u,t,2)-diff(u,x,2)
eq2=laplace(eq1,t,p)
% p^2*laplace(u(x, t), t, p) - p*u(x, 0) - subs(diff(u(x, t), t), t, 0) - laplace(diff(u(x, t), x, x), t, p)
syms U(x)
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0) subs(diff(u(x, t), t), t, 0)],...
      [diff(U(x),x,2) U(x) x -x])
% U(x)*p^2 - x*p + x - diff(U(x), x, x)

U1=dsolve(eq3)
% C20*exp(-p*x) + C21*exp(p*x) + (x*(p - 1))/p^2
U2=(x*(p - 1))/p^2

u2=ilaplace(U2,p,t)
% x - t*x