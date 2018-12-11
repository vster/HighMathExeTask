clear
syms x y real
syms phi(y) psi(x)
f=phi(y)+1i*psi(x)
u=phi(y)
v=psi(x)

dux=diff(u,x)
% 0
duy=diff(u,y)
% diff(phi(y), y)
dvx=diff(v,x)
% diff(psi(x), x)
dvy=diff(v,y)
% 0
% dux=dvy - correct 
% duy=-dvx => diff(phi(y), y)=-diff(psi(x), x)=a
syms a C1 C2
phi(y)=a*y+C1
psi(x)=-a*x+C2
f=phi(y)+1i*psi(x)
% C1 + C2*1i - a*x*1i + a*y
syms A C z
f=A*z+C
f=A*(x+i*y)+C
% C=C1+C2*1i
A=simplify((- a*x*1i + a*y)/(x+i*y))
% -a*1i