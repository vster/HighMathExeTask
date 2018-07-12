% Determine whether the series converges or diverges
% a(n)=(n!)^2/(2*n)!

syms n;
a(n)=factorial(n)^2/factorial(2*n)

D=limit(a(n+1)/a(n),n,inf)
% 1/4 < 1 => series converges