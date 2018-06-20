% Investigate the convergence of the series
% 1-1/2+1/3-1/4+...+(-1)^(n-1)*1/n+...

syms n;
digits(4)
u(n)=(-1)^(n-1)*1/n

% Use the Leibniz test
% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% log(2)
% series is converge