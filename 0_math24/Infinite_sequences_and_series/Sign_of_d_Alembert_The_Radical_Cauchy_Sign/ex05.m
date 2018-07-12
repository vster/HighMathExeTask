% Determine whether the series converges or diverges
% a(n)=n^n/2^(3*n-1)

syms n;
a(n)=n^n/2^(3*n-1)

% Use the radical Cauchy test.
K=limit(a(n)^(1/n),n,inf)
% Inf > 1 => series diverges