% d2u/dx2=alfa^2*du/dt
% u(x,0)=0
% x>=0
% u(0,t)=A
% lim(x->inf)u(x,t)=0

clear
syms t x p u0
syms alfa real
assume(alfa>0)
assume(x>0)
assume(t>0)
syms u(x,t)
eq1=diff(u,x,2)-alfa^2*diff(u,t)
eq2=laplace(eq1,t,p)
% (u(x, 0) - p*laplace(u(x, t), t, p))*alfa^2 + laplace(diff(u(x, t), x, x), t, p)

syms U(x) A
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0)],...
      [diff(U(x),x,2) U(x) 0])
% - p*U(x)*alfa^2 + diff(U(x), x, x)

U1=dsolve(eq3)
% C10*exp(alfa*p^(1/2)*x) + C11*exp(-alfa*p^(1/2)*x)
% lim(x->inf)u(x,t)=0 => C10=0
% u(0,t)=A => C11=A/p
U2=A*exp(-alfa*p^(1/2)*x)/p
u2=ilaplace(U2,p,t)
% A*ilaplace(exp(-alfa*p^(1/2)*x)/p, p, t) - ?

u3=A*Erf(alfa*x/(2*t^(1/2)))   % correct answer

% Checking
U3=laplace(u3,t,p)
% (A*exp(-alfa*p^(1/2)*x))/p
simplify(U2-U3)
% 0

function E=Erf(x)
E=1-erf(x)
end