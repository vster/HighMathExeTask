% 1 week - 50 %
% 4 weeks - 90 %

syms Lmax r k M
L=Lmax-r*Lmax*exp(-k*t)

L1=subs(L,t,1)
% Lmax - Lmax*r*exp(-k) = 0.5*Lmax
L2=subs(L,t,4)
% Lmax - Lmax*r*exp(-k) = 0.8*Lmax

eq1=r*exp(-k)-0.5
eq2=r*exp(-4*k)-0.1

[r1 k1]=solve(eq1,eq2,[r k])

vpa(r1)
vpa(k1)

eq11=subs(eq1,[r k],[r1(1) k1(1)])
eq21=subs(eq2,[r k],[r1(1) k1(1)])

% L(t=0)=Lmax-r*Lmax=(1-r)*Lmax
PL=vpa((1-r1(1))*100)
% 14.5 %



