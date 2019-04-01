clear
syms t p alfa omega
f=exp(-alfa*t)*sin(omega*t)
F=laplace(f,t,p)
% omega/((alfa + p)^2 + omega^2)

f=exp(-alfa*t)*cos(omega*t)
F=laplace(f,t,p)
% (alfa + p)/((alfa + p)^2 + omega^2)