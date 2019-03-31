clear
syms x t p
syms A B C A1 B1
syms u(x,t)
eq1=A*diff(u,x,2)+B*diff(u,x)+C*u+A1*diff(u,t,2)+B1*diff(u,t)

eq2=laplace(eq1,t,p)

% U(x,p)=laplace(u,t,p)

% C
U(x,p)=int(exp(-p*t)*u,t,0,inf)

% B
int(exp(-p*t)*diff(u,x),t,0,inf)
% int(exp(-p*t)*diff(u(x, t), x), t, 0, Inf) 
% = diff(U,x)

% A
int(exp(-p*t)*diff(u,x,2),t,0,inf)
% int(exp(-p*t)*diff(u(x, t), x, x), t, 0, Inf) 
% = diff(U,x,2)

% B1
laplace(diff(u,t),t,p)
% p*laplace(u(x, t), t, p) - u(x, 0) 
% = p*U-phi(x)

% A1
laplace(diff(u,t,2),t,p)
% p^2*laplace(u(x, t), t, p) - p*u(x, 0) - subs(diff(u(x, t), t), t, 0)
% =p^2*U-p*phi(x)-psi(x)

syms U(x,p) phi(x) psi(x)
eq2=laplace(eq1,t,p)
% B*laplace(diff(u(x, t), x), t, p) + C*laplace(u(x, t), t, p) - A1*(p*u(x, 0) - p^2*laplace(u(x, t), t, p) + subs(diff(u(x, t), t), t, 0)) + A*laplace(diff(u(x, t), x, x), t, p) + B1*(p*laplace(u(x, t), t, p) - u(x, 0))

eq3=A*diff(U,x,2)+B*diff(U,x)+C*U+A1*(p^2*U-p*phi(x)-psi(x))+B1*(p*U-phi(x))
% A*diff(U(x, p), x, x) - A1*(psi(x) - p^2*U(x, p) + p*phi(x)) + B*diff(U(x, p), x) + C*U(x, p) - B1*(phi(x) - p*U(x, p))

eq4=expand(eq3)

% M=C-A1*p^2+B1*p
% N=-A1*p*phi-A1*psi-B1*phi
syms M N
eq5=A*diff(U,x,2)+B*diff(U,x)+M*U+N
% A*diff(U(x, p), x, x) + B*diff(U(x, p), x) + N + M*U(x, p)
