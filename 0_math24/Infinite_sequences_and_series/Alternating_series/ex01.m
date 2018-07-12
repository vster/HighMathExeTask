% Investigate the convergence series
% S=sum(n=1:inf)(-1)^n*sin(n)^2/n

syms n;
a(n)=(-1)^n*sin(n)^2/n

% We apply a sufficient Leibniz test for alternating series.
L=limit(abs(a(n)),n,inf)
% 0 => series converges