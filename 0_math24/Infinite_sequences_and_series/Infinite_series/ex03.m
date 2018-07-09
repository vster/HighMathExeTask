% Show that the harmonic series sum(n:1:inf)1/n diverges.

% S=sum(n=1:inf)1/n = 1+1/2+ (1/3+1/4) + (1/5+1/6+1/7+1/8)+...
% S > sum(n=1:inf)1/2=inf => series diverges

clear
syms n;
u(n)=1/n

S=symsum(u(n),n,inf)