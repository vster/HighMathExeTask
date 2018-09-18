% Solve the differential equation
% 1/y^2-2/x=2*x*y'/y^3
%  with the initial condition y(1)=1

% 1)
clear
% y'=(1/y^2-2/x)*y^3/(2*x)
syms x y(x)
eqn=diff(y(x))==(1/y^2-2/x)*y^3/(2*x)
ySol=dsolve(eqn)
%                              0
%  1/((C25 + 2*log(x))/x)^(1/2)
% -1/((C25 + 2*log(x))/x)^(1/2)

% 1/y^2-2/x=2*x/y^3*dy/dx
% (1/y^2-2/x)*dx-2*x/y^3*dy=0
syms x y
P(x,y)=1/y^2-2/x
Q(x,y)=-2*x/y^3
dQx=diff(Q,x)
% -2/y^3
dPy=diff(P,y)
% -2/y^3
% dPx=dPy

% dUx=P(x,y), dUy=Q(x,y)
U(x,y)=int(Q,y)
% x/y^2
syms ksi(x)
U(x,y)=U(x,y)+ksi(x)
% ksi(x) + x/y^2
dUy=diff(U(x,y),x)
% diff(ksi(x), x) + 1/y^2
eq1=dUy-P
% diff(ksi(x), x) + 2/x
dksi(x)=-2/x
ksi(x)=int(dksi(x),x)
% -2*log(x)
% x/y^2-2*log(x)=C