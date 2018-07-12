% Determine whether the series 
% S=sum(n=1:inf)(-1)^(n+1)/n! 
% is absolutely convergent, conditionally convergent or divergent

syms n;
a(n)=(-1)^(n+1)/factorial(n)

L=limit(abs(a(n+1)/a(n)),n,inf)
% 0 => series converges absolutely