% x1(t)=[2;t]
% x2(t)=[t;t^2]

syms t
Phi(t)=[2 t;t t^2]
Phi1(t)=Phi(t)^(-1)
%[    1,  -1/t]
%[ -1/t, 2/t^2]
dPhi(t)=diff(Phi(t),t)
%[ 0,   1]
%[ 1, 2*t]
A(t)=dPhi*Phi1
%[ -1/t, 2/t^2]
%[   -1,   3/t]

% dx/dt=-x/t+2*y/t^2
% dy/dt=-x+3*y/t