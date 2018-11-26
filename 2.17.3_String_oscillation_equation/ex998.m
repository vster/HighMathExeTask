% x=0, x=L
% u(t=0)=0

syms x t L h v0 a
assume(h>0)
phi=0
psi=piecewise(abs(x-L/2)<h/2,v0,0)

% u(x,t)=sum(k=1:inf)(ak*cos(a*k*pi*t/L)+bk*sin(a*k*pi*t/L))*sin(k*pi*x/L)
% ak=2/L*int(0:L)phi(x)*sin(k*pi*x/L)*dx
% bk=2/(a*k*pi)*int(0:L)psi(x)*sin(k*pi*x/L)*dx

syms k
bk=2/(a*k*pi)*int(psi*sin(k*pi*x/L),x,(L-h)/2,(L+h)/2)
% (4*L*v0*sin((pi*k)/2)*sin((pi*h*k)/(2*L)))/(a*k^2*pi^2)
pretty(bk)

ut=bk*sin(a*k*pi*t/L)*sin(k*pi*x/L)
% (4*L*v0*sin((pi*a*k*t)/L)*sin((pi*k)/2)*sin((pi*h*k)/(2*L))*sin((pi*k*x)/L))/(a*k^2*pi^2)
pretty(ut)

for i=1:7
    ut1(i)=subs(ut,k,i);
end
disp(ut1.')
pretty(ut1.')