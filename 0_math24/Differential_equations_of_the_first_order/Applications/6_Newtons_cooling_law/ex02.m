% The body with the initial temperature T0 is placed in the room with the 
% temperature TS0 and begins to cool in accordance with Newton's law 
% with a constant value of k. At the same time, the temperature of the 
% room slowly grows linearly.
% Ts = Ts0 + beta*t, 
% where beta is a known parameter. 
% Determine the time ? when the temperature of the body 
% and the environment are equal.

% dT/dt=k*(Ts-T)
% dT/dt=k*(Ts0+beta*t-T)
% T'+k*T=k*Ts0+k*beta*t
syms t T(t) k beta Ts0 T0
eqn=diff(T,t)+k*T-(k*Ts0+k*beta*t)
cond=T(0)==T0
solT=dsolve(eqn,cond)
% Ts0 + beta*t - (beta - exp(-k*t)*(beta + T0*k - Ts0*k))/k
% Ts0+beta*tau=Ts0 + beta*tau - (beta - exp(-k*tau)*(beta + T0*k - Ts0*k))/k
syms tau
eq2= (beta - exp(-k*tau)*(beta + T0*k - Ts0*k))/k
tau1=solve(eq2,tau)
digits(4)
tau1=vpa(subs(tau1,[Ts0 k  beta T0],[20 1/5 2 200]))
% 14.72 min