% Chain line equation
% D_P=ro*g*ds

% -T(x)*cos(alfa(x))+T(x+dx)*cos(alfa(x+dx))=0 =>T(x)*cos(alfa(x))=T0=const
% -T(x)*sin(alfa(x))+T(x+dx)*sin(alfa(x+dx))=0 =>d(T(x)*sin(alfa(x))=dP(x)

% d(T(x)*sin(alfa(x))=dP(x)
% As T(x)=T0/cos(alfa(x)) then
% d(T0*tan(alfa(x)))=dP(x) => T0*d(tan(alfa(x)))=dP(x)
% As tan(alfa(x))=dy/dx=y' then
% T0*d(y')=dP(x) => T0*d(y')=ro*g*A*ds
% ds=sqrt(1+(y')^2)*dx
% We get chain line diff equation
% T0*dy'/dx=ro*g*A*sqrt(1+(y')^2)
% T0*y''=ro*g*A*sqrt(1+(y')^2)
clear
syms x T0 ro g A real
syms y(x) z(x)
eqn=T0*diff(y,x,2)-ro*g*A*sqrt(1+diff(y,x)^2)
% z=y'
eqn=T0*diff(z,x)-ro*g*A*sqrt(1+z^2)
zSol=dsolve(eqn)
%  sinh(C16 + (A*g*ro*x)/T0)
z1=zSol(1)
z1=subs(z1,x,0)
% sinh(C16)=0 => C16=0
z1=sinh(A*g*ro*x/T0)
% a=T0/(A*g*ro)
syms a
z2=sinh(x/a)
y=int(z2,x)
% a*cosh(x/a)