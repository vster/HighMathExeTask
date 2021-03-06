% x^2*d2u/dx2-y^2*d2u/dy2=0
clear
syms x y z
a=x^2
b=0
c=-y^2
d=b^2-a*c
% x^2*y^2 > 0
% Hence the hyperbolic equation

% x^2*dy^2-y^2*dx^2=0
% (x*dy+y*dx)(x*dy-y*dx)=0

% x*dy+y*dx=0, x*dy-y*dx=0
% dy/y+dx/x=0, dy/y-dx/x=0
% log(y)+log(x)=log(C1),log(y)-log(x)=log(C2)
% x*y=C1, y/x=C2

syms ksi eta
syms u(x,y)
ksif=x*y
etaf=y/x

syms u1(ksi,eta)
duksi=diff(u1,ksi)
dueta=diff(u1,eta)
dksi_x=diff(ksif,x)
deta_x=diff(etaf,x)
dux=duksi*dksi_x+dueta*deta_x
% y*diff(u1(ksi, eta), ksi) - (y*diff(u1(ksi, eta), eta))/x^2
dksi_y=diff(ksif,y)
deta_y=diff(etaf,y)
duy=duksi*dksi_y+dueta*deta_y
% diff(u1(ksi, eta), eta)/x + x*diff(u1(ksi, eta), ksi)




% du1x=diff(u,x)
dux=diff(u,ksi)*diff(ksi1,x)+diff(u,eta)*diff(eta1,x)
% y*diff(u(x, y, ksi, eta), ksi) - (y*diff(u(x, y, ksi, eta), eta))/x^2
duy=diff(u,ksi)*diff(ksi1,y)+diff(u,eta)*diff(eta1,y)
% diff(u(x, y, ksi, eta), eta)/x + x*diff(u(x, y, ksi, eta), ksi)

d2ux=diff(y*diff(u, ksi),x)-diff((y*diff(u, eta))/x^2,x)


%du1x=diff(u2,ksi)*diff(ksi1,x)+diff(u2,eta)*diff(eta1,x)
% y*diff(u2(ksi, eta), ksi) - (y*diff(u2(ksi, eta), eta))/x^2
%du1y=diff(u2,ksi)*diff(ksi1,y)+diff(u2,eta)*diff(eta1,y)
% diff(u2(ksi, eta), eta)/x + x*diff(u2(ksi, eta), ksi)

