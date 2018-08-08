% Find the domain of convergence of the series
% w(n)=((sqrt(3)+i)/3)^n*(z-i)^n

clear
syms n z;
w(n)=((sqrt(3)+i)/3)^n*(z-i)^n

a(n)=((sqrt(3)+i)/3)^n
R=limit(abs(a(n)/a(n+1)),n,inf)
% 3/2