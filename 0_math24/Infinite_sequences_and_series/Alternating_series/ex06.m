% Determine whether the series 
% S=sum(n=1:inf)(-1)^(n+1)/(5*n-1)
% is absolutely convergent, conditionally convergent or divergent?

syms n;
a(n)=(-1)^(n+1)/(5*n-1)

% Applying the Leibniz test, we see
L=limit(abs(a(n)),n,inf)
% 0 => series converges

a1(n)=1/(5*n-1)

S=symsum(a1(n),n,1,inf)
% Inf => series converges conditionally