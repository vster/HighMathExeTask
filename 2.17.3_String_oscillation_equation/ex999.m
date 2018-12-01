% x=0, x=3

clear
syms x t a
phi=piecewise(0<=x<=2,-0.05*x,2<=x<=3,0.1*(x-3))
L=3

% u(x,t)=sum(k=1:inf)(ak*cos(a*k*pi*t/L)+bk*sin(a*k*pi*t/L))*sin(k*pi*x/L)
% ak=2/L*int(0:L)phi(x)*sin(k*pi*x/L)*dx
% bk=2/(a*k*pi)*int(0:L)psi(x)*sin(k*pi*x/L)*dx

syms k
ak=2/L*int(phi*sin(k*pi*x/L),x,0,L)
ak=simplify(ak)
% (3*(2*sin(pi*k) - 3*sin((2*pi*k)/3)))/(10*k^2*pi^2)
ak=simplify(subs(ak,sin(pi*k),0))
% -(9*sin((2*pi*k)/3))/(10*k^2*pi^2)
ut=ak*cos(k*pi*a*t/L)*sin(k*pi*x/L)
% -(9*sin((pi*k*x)/3)*cos((pi*a*k*t)/3)*sin((2*pi*k)/3))/(10*k^2*pi^2)
pretty(ut)
%      / pi k x \    / pi a k t \    / 2 pi k \
%   sin| ------ | cos| -------- | sin| ------ | 9
%      \    3   /    \     3    /    \    3   /
% - ---------------------------------------------
%                         2   2
%                     10 k  pi
