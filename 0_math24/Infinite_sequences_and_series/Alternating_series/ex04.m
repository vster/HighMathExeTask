% Determine whether the series 
% S=sum(n=2:inf)(-1)^(n+1)*sqrt(n)/log(n)
% is absolutely convergent, conditionally convergent or divergent?

syms n;
a(n)=(-1)^(n+1)*sqrt(n)/log(n)

L=limit(abs(a(n)),n,inf)
% Inf => series diverges