k=1/4
b=25

% dA/dt+k*A=b*q(t)
q0=12000/12
% 1000
syms t A(t)
eqn=diff(A,t)+k*A-b*q0
Asol=dsolve(eqn)
% C1*exp(-t/4) + 100000
A1=subs(Asol,t,0)
% C1 + 100000 => C1=-100000
A=100000*(1-exp(-t/4))

Amax=b*q0/k
% 100000