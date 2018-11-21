% (x^2+y^2)*dz/dx+2*x*y*dz/dy = 0

% dx/(x^2+y^2)=dy/(2*x*y)=dz/0

% dy/dx=(2*x*y)/(x^2+y^2)

syms y x(y)
eqn=diff(x,y)-(x^2+y^2)/(2*x*y)
xsol=dsolve(eqn)
xsol.'
% [ y, -y, y*((C6 + y)/y)^(1/2), -y*((C6 + y)/y)^(1/2)]
syms C x y
eqn1=x-y*((C + y)/y)^(1/2)
C1=solve(eqn1,C)
% y*(x^2/y^2 - 1)=C1
% C2=y/(x^2-y^2)

% dz=0 => z=C3
% Phi(y/(x^2-y^2),z)=0
% z=psi(y/(x^2-y^2))
% where psi() - arbitrary function
