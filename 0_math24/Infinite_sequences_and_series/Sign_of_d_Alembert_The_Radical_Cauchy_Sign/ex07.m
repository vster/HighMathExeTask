% Investigate the following series for convergence:
% a(n)=1/log(n)^n

syms n;
a(n)=1/log(n)^n

% Use the radical Cauchy test.
K=limit(a(n)^(1/n),n,inf)
% 0 < 1 => series converges