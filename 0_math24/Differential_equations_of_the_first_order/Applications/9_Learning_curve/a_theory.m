% Learning curve
% dL/dt=k*(Lmax-L)
clear
syms t L(t) k Lmax
eqn=diff(L,t)-k*(Lmax-L)
LSol=dsolve(eqn)
% Lmax - C1*exp(-k*t)
syms M
L1=subs(L,t,0)
% L(0)=Lmax-C1=M => C1=Lmax-M
% L(t)=Lmax-(Lmax-M)*exp(-k*t)