syms lam
P=lam*[3 1 0; 2 4 2; 1 2 5]
x=[10 20 30]
X=[x;x;x].'
y=[20 40 60]
Y=[y;y;y]
% 1) lam
% 2) mx, my
% 3) simx, simy
% 4) rxy

% 1)
P1=sum(sum(P))
% 20*lam=1
% lam=1/20
P=subs(P,lam,1/20)

% 2)
MX=sum(sum(X.*P))
% 22
MY=sum(sum(Y.*P))
% 41

% 3)
DX=sum(sum(((X-MX).^2).*P))
% 56
DY=sum(sum(((Y-MY).^2).*P))
% 259

sigx=sqrt(DX)
% 2*14^(1/2)
sigy=sqrt(DY)
% 259^(1/2)

DX=sum(sum(X.^2.*P))-MX^2
% 56
DY=sum(sum(Y.^2.*P))-MY^2
% 259

% 4)
CXY=sum(sum(((X-MX).*(Y-MY)).*P))
% 68
rxy=CXY/(sigx*sigy)
% (17*14^(1/2)*259^(1/2))/1813
digits(4)
vpa(rxy)
% 0.5646