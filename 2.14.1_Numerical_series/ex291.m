% Investigate the convergence of the series
% 1-1+1-1+...+(-1)^(n-1)+...

syms n;
u(n)=(-1)^(n-1)
% Use the Leibniz test
% 2 condition
L=limit(abs(u(n)),n,inf)
% 1 > 0 => Series is diverges