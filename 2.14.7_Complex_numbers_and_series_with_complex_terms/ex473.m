% Find the domain of convergence of the series
% w(n)=z^n/n!

clear
syms n z;
w(z,n)=z^n/factorial(n)

a(n)=1/factorial(n)
R=limit(abs(a(n)/a(n+1)),n,inf)
% Inf => Domain of convergence is [-inf,inf]
