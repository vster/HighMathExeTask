% P=m*g
% F=-k*v
% m*d2x/dt2=m*g-k*dx/dt
% m*dv/dt=m*g-k*v
% dv/dt=g-k/m*v
syms t k m g real
syms v(t)
eqn=diff(v,t)-g+k/m*v
vSol=dsolve(eqn)
% -(C2*exp(-(k*t)/m) - g*m)/k
v1=subs(vSol,t,0)
% -(C2 - g*m)/k=0 => C2=m*g
v(t)=m*g/k*(1-exp(-(k*t)/m))

syms tau
x(t)=int(v(tau),tau,0,t)
% (g*m^2*(exp(-(k*t)/m) - 1))/k^2 + (g*m*t)/k
% If t=T then x=H
% H=m*g/k*(T-m/k*(1-exp(-(k*t)/m))
% If T is big then exp(-(k*t)/m)->0
% H~m*g/k*(T-m/k) or T(H)~k*H/(m*g)+m/k


