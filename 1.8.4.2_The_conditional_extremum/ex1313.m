syms x y z lam S real;
f=x^2+y^2-z^2
c=x*y-2*S

u=x^2+y^2+lam*(x*y-2*S)

dux=diff(u,x)
duy=diff(u,y)

% 2*x + lam*y = 0
% 2*y + lam*x = 0
% x*y/2 =S

slv=solve(2*x + lam*y == 0, 2*y + lam*x == 0, x*y/2 == S )
% lam=-2
% x=y=2^(1/2)*S^(1/2)