% Applying the Stokes formula, find
% I = int (C) (y+z)*dx+(z+x)*dy+(x+y)*dz
% where C - circle x^2+y^2+z^2=a^2, x+y+z=0

% Stokes formula
% int (C) P*dx+Q*dy+R*dz = 
%  = int int (S) (((diff(R,y)-diff(Q,z)*cos_alfa + 
%        + (diff(P,z)-diff(R,x))*cos_beta + 
%        + (diff(Q,x)-diff(P,y))*cos_gamma) *dS

syms x y z real;
P=y+z
Q=z+x
R=x+y

f=x+y+z
N=[1 1 1]
Nn=norm(sym(N))
n=N/Nn

cos_alfa=n(1)
cos_beta=n(2)
cos_gamma=n(3)

f1=(diff(R,y)-diff(Q,z))*cos_alfa + ...
    (diff(P,z)-diff(R,x))*cos_beta + ...
    (diff(Q,x)-diff(P,y))*cos_gamma
% 0

syms ro a teta
I=int(int(f1*ro,ro,0,a),teta,0,2*pi)
% 0

