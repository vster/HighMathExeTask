% Applying the Stokes formula, find
% I = int (C) z^2*y^3*dx+dy+z*dz
% where C - circle x^2+y^2=z^2, z=0

% Stokes formula
% int (C) P*dx+Q*dy+R*dz = 
%  = int int (S) (((diff(R,y)-diff(Q,z)*cos_alfa + 
%        + (diff(P,z)-diff(R,x))*cos_beta + 
%        + (diff(Q,x)-diff(P,y))*cos_gamma) *dS

syms x y z r;
P=x^2*y^3
Q=1
R=z

% n = k => 
cos_alfa=0
cos_beta=0 
cos_gamma=1

f=(diff(R,y)-diff(Q,z))*cos_alfa + ...
    (diff(P,z)-diff(R,x))*cos_beta + ...
    (diff(Q,x)-diff(P,y))*cos_gamma
% -3*x^2*y^2

% cos_gamma*dS=dx*dy
% I = int int (D) (-3*x^2*y^2)*dx*dy

% Passing to polar coordinates
syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro

f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
% 3*ro^4*(cos(4*teta)/8 - 1/8)

% D: x^2+y^2=r^2 => 0<=ro<=r
I=int(int(f1*J,ro,0,r),teta,0,2*pi)
% -(pi*r^6)/8



