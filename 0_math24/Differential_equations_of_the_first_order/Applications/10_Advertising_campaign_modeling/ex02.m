syms t 
digits(6)
k=1/4
b=25
q0=12000/6
% 2000
A1=b*q0/k*(1-exp(-t/4))
% 200000 - 200000*exp(-t/4)
A1=subs(A1,t,6)
A1=vpa(A1)
% 155374.0

syms t A(t)
eqn=diff(A,t)+k*A
Asol=dsolve(eqn)
% C2*exp(-t/4)
syms C
A2=C*exp(-k*(t-6))
% C=155374.0
A2=subs(A2,C,155374.0)
% 155374*exp(3/2 - t/4)

A(t)=piecewise(0<=t<=6,200000 - 200000*exp(-t/4),6<t<=12,155374*exp(3/2 - t/4))

fplot(A,[0,12])
grid
