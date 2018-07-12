% Investigate the convergence series
% sum(n=1:inf)(1/3+1/n)^n

syms n;
a(n)=(1/3+1/n)^n

% Use the radical Cauchy test.
K=limit(a(n)^(1/n),n,inf)
% 1/3 < 1 => series converges