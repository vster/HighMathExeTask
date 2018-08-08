% Investigate the convergence of the series
% w(n)=n/(n+1)+1i*(n+1)/(n+2)

clear
syms n;
u(n)=n/(n+1);
v(n)=(n+1)/(n+2);
w(n)=u(n)+1i*v(n)

Lu=limit(u(n),n,inf)
% 1 => u(n) diverges
Lv=limit(v(n),n,inf)
% 1 => v(n) diverges
% and so w(n) diverges