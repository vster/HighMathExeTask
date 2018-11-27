% x=0, x=L
% u(t=0)=0
clear
syms x t L h v0 a
assume(h>0)
phi=0
psi=piecewise(abs(x-L/2)<h/2,cos(pi*(x-L/2)/h),0)

% u(x,t)=sum(k=1:inf)(ak*cos(a*k*pi*t/L)+bk*sin(a*k*pi*t/L))*sin(k*pi*x/L)
% ak=2/L*int(0:L)phi(x)*sin(k*pi*x/L)*dx
% bk=2/(a*k*pi)*int(0:L)psi(x)*sin(k*pi*x/L)*dx

syms k
bk=2/(a*k*pi)*int(psi*sin(k*pi*x/L),x,(L-h)/2,(L+h)/2)
% (4*L^2*h*sin((pi*k)/2)*cos((pi*h*k)/(2*L)))/(a*k*pi*(pi*L^2 - pi*h^2*k^2))
pretty(bk)

ut=simplify(bk*sin(a*k*pi*t/L)*sin(k*pi*x/L))
pretty(ut)
%  2      / pi a k t \    / pi k \    / pi h k \    / pi k x \
% L  h sin| -------- | sin| ---- | cos| ------ | sin| ------ | 4
%         \     L    /    \   2  /    \   2 L  /    \    L   /
% --------------------------------------------------------------
%                            2   2    2  2
%                      a k pi  (L  - h  k )
