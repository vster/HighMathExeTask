syms m0 b t g;
% Масса капли
m=m0-b*t
% Скорость капли
v=g*t
% Кинетическая энергия капли
K=m*v^2/2
K=expand(K)
% - (b*g^2*t^3)/2 + (m0*g^2*t^2)/2
dK=diff(K,t)
dK=factor(dK)
% -(g^2*t*(3*b*t - 2*m0))/2
% t1=0
slv=solve(3*b*t - 2*m0 == 0,t)
t1=slv
% t1=(2*m0)/(3*b) - момент макс кин энергии
K_max=subs(K,t,t1)
% K_max=(2*g^2*m0^3)/(27*b^2)