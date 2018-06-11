% Investigate the convergence of the series
% sum (n=1:inf) 1/(2^n+1)

clear
syms n;
digits(10)
u(n)=1/(2^n+2)
L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)

S1=0
for n=1:20
    S1=S1+u(n);
    vpa(S1)
end
% 0.6322489365