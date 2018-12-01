% x=0, x=L

syms x t h L
assume(L>0)
phi=piecewise(0<=x<=L/2,(2*h/L)*x,L/2<=x<=L,(2*h/L)*(L-x))

% u(x,t)=sum(k=1:inf)(ak*cos(a*k*pi*t/L)+bk*sin(a*k*pi*t/L))*sin(k*pi*x/L)
% ak=2/L*int(0:L)phi(x)*sin(k*pi*x/L)*dx
% bk=2/(a*k*pi)*int(0:L)psi(x)*sin(k*pi*x/L)*dx

syms k
ak=2/L*int(phi*sin(k*pi*x/L),x,0,L)
ak=simplify(ak)
% -(4*h*(sin(pi*k) - 2*sin((pi*k)/2)))/(k^2*pi^2)
%        =0
pretty(ak)
ak=subs(ak,sin(pi*k),0)
% (8*h*sin((pi*k)/2))/(k^2*pi^2)
pretty(ak)

ut=ak*cos(k*pi*a*t/L)*sin(k*pi*x/L)
pretty(ut)
%      / pi k \    / pi k x \    / pi a k t \
% h sin| ---- | sin| ------ | cos| -------- | 8
%      \   2  /    \    L   /    \     L    /
% ---------------------------------------------
%                      2   2
%                     k  pi

for i=1:7
    ut1(i)=subs(ut,k,i);
end
disp(ut1.')

    