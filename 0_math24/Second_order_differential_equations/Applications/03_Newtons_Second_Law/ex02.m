% The force of gravity
% P=m*g*x/L
% Friction force
% Ff=-mu*m*g*(L-x)/L
% m*d2x/dt2=P-Ff
% m*d2x/dt2=m*g*x/L-mu*m*g*(L-x)/L
% d2x/dt2=g*x/L-mu*g*(L-x)/L
% d2x/dt2-(1+mu)*g*x/L=-mu*g
clear
syms t mu g L x(t)
eqn=diff(x,t,2)-(1+mu)*g*x*L+mu*g
xSol=dsolve(eqn)
% C1*exp(t*(L*g*(mu + 1))^(1/2)) + C2*exp(-t*(L*g*(mu + 1))^(1/2)) + mu/(L + L*mu)

% P=Ff =>m*g*x/L=mu*m*g*(L-x)/L => x=mu*L/(1+mu)

x0=subs(xSol,t,0)
% C1 + C2 + mu/(L + L*mu) = mu*L/(1+mu)+eps
v=diff(xSol,t)
v0=subs(v,t,0)
% C1*(L*g*(mu + 1))^(1/2) - C2*(L*g*(mu + 1))^(1/2)=0

% / C1+C2=eps
% \ C1-C2=0
% C1=C2=eps/2
syms eps
xSol=eps*exp(t*(L*g*(mu + 1))^(1/2))/2 + eps*exp(-t*(L*g*(mu + 1))^(1/2))/2 + mu/(L + L*mu)
syms T
xL=subs(xSol,t,T)
% (eps*exp(T*(L*g*(mu + 1))^(1/2)))/2 + (eps*exp(-T*(L*g*(mu + 1))^(1/2)))/2 + mu/(L + L*mu)

% Put z=exp(T*(g*(mu + 1)/L)^(1/2))
% then
% eps*z^2-(2*L/(1+mu))*z+eps=0
syms z
eqn2=eps*z^2-(2*L/(1+mu))*z+eps
zSol=solve(eqn2)
%  (L + (-(L + eps + eps*mu)*(eps - L + eps*mu))^(1/2))/(eps + eps*mu)
%  (L - (-(L + eps + eps*mu)*(eps - L + eps*mu))^(1/2))/(eps + eps*mu)

eqn3=exp(T*(g*(mu + 1)/L)^(1/2))==(L + (-(L + eps + eps*mu)*(eps - L + eps*mu))^(1/2))/(eps + eps*mu)
T1=solve(eqn3,T)
% log((L + (-(L + eps + eps*mu)*(eps - L + eps*mu))^(1/2))/(eps + eps*mu))/((g*(mu + 1))/L)^(1/2)
T1=simplify(T1)
pretty(T1)
%   / L + sqrt(-(L + eps + eps mu) (eps - L + eps mu)) \
%log| ------------------------------------------------ |
%   \                   eps + eps mu                   /
%-------------------------------------------------------
%                       / g (mu + 1) \
%                   sqrt| ---------- |
%                       \      L     /