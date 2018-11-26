% x=0, x=1

syms x t h
phi=h*(x^4-2*x^3+x)
L=1

% u(x,t)=sum(k=1:inf)(ak*cos(a*k*pi*t/L)+bk*sin(a*k*pi*t/L))*sin(k*pi*x/L)
% ak=2/L*int(0:L)phi(x)*sin(k*pi*x/L)*dx
% bk=2/(a*k*pi)*int(0:L)psi(x)*sin(k*pi*x/L)*dx

syms k
ak=2/L*int(phi*sin(k*pi*x/L),x,0,L)
ak=simplify(ak)
% -(2*h*(24*cos(pi*k) + k^3*pi^3*sin(pi*k) + 12*k*pi*sin(pi*k) - 24))/(k^5*pi^5)
pretty(ak)
ak=simplify(subs(ak,[cos(pi*k) sin(pi*k)],[(-1)^k, 0]))
% -(2*h*(24*(-1)^k - 24))/(k^5*pi^5)
ut=ak*cos(k*pi*a*t/L)*sin(k*pi*x/L)
% -(2*h*sin(pi*k*x)*cos(pi*a*k*t)*(24*(-1)^k - 24))/(k^5*pi^5)
pretty(ut)
syms n
ut=subs(ut,k,2*n+1)
pretty(ut)
ut=simplify(subs(ut,(-1)^(2*n+1),-1))
pretty(ut)

for i=1:7
    ut1(i)=subs(ut,n,i);
end
disp(ut1.')
pretty(ut1.')