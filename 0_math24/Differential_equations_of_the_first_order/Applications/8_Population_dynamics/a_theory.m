% Population dynamics

% Malthusian growth model
% dN/dt=a*N
% a - constant growth (Malthusian parameter)
% N(t)=N0*exp(a*t)

% Logistic model
% dN/dt=a*N(1-N/M)
clear
syms t N(t) a M
eqn=diff(N(t),t)-a*N*(1-N/M)
NSol=simplify(dsolve(eqn))

syms C
NSol= M/(exp(- a*t - C*M) + 1)
N0=subs(NSol,t,0)
% M/(exp(-C*M) + 1)
syms N0
C1=solve(N0==M/(exp(-C*M) + 1),C)
% -log(M/N0 - 1)/M
N2=simplify(subs(NSol,C,C1))
% (M*N0*exp(a*t))/(M - N0 + N0*exp(a*t))
% M*N0/(N0+(M-N0)*exp(-a*t))

% Hyperbolic growth models
% dN/dt=C/((T0-t)^2+tau^2)
clear
syms t N(t) C T0 tau
eqn=diff(N,t)-C/((T0-t)^2+tau^2)
NSol2=simplify(dsolve(eqn))
% C20 - (C*atan((T0 - t)/tau))/tau
NSol2=C/tau*acot((T0-t)/tau)
N3=subs(NSol2,[C T0 tau],[1.86e11 2007 42])
% -(31000000000*acot(t/42 - 669/14))/7