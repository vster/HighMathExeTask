% x=0, x=L
% u=4*h/L^2*x*(L-x)

syms x t h L a
phi=(4*h/L^2)*x*(L-x)
psi=0

% u(x,t)=sum(k=1:inf)(ak*cos(a*k*pi*t/L)+bk*sin(a*k*pi*t/L))*sin(k*pi*x/L)
% ak=2/L*int(0:L)phi(x)*sin(k*pi*x/L)*dx
% bk=2/(a*k*pi)*int(0:L)psi(x)*sin(k*pi*x/L)*dx

syms k
ak=2/L*int(phi*sin(k*pi*x/L),x,0,L)
% -(2*((4*L*h*sin(pi*k))/(k^2*pi^2) - (16*L*h*sin((pi*k)/2)^2)/(k^3*pi^3)))/L
%             =0                              =(1-(-1)^k)/2
pretty(ak)

ak=subs(ak,[sin(pi*k) sin((pi*k)/2)^2],[0 (1-(-1)^k)/2])
ak=simplify(ak)
% -(16*h*((-1)^k - 1))/(k^3*pi^3)

ut=ak*cos(k*pi*a*t/L)*sin(k*pi*x/L)
syms n
ut=subs(ut,k,2*n+1)
% -(16*h*cos((t*pi*(2*n + 1))/L)*sin((x*pi*(2*n + 1))/L)*((-1)^(2*n + 1) - 1))/(pi^3*(2*n + 1)^3)
%                                                          =-2
pretty(ut)
ut=subs(ut,((-1)^(2*n + 1) - 1),-2)
% (32*h*sin((x*pi*(2*n + 1))/L)*cos((a*t*pi*(2*n + 1))/L))/(pi^3*(2*n + 1)^3)
pretty(ut)