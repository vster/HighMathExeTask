% Show that the series
% w(n)=1/n!*(1+i)^(n-1) 
% converges absolutely

syms n;
w(n)=1/factorial(n)*(1+i)^(n-1)

Lw=limit(w(n),n,inf)

r(n)=abs(w(n))

for k=1:6
    w1(k)=w(k);
end
disp(w1)
% [ 1, 1/2 + 1i/2, 1i/3, - 1/12 + 1i/12, -1/30, - 1/180 - 1i/180]
% Module
r1=abs(w1)
r1=simplify(r1)
% [ 1, 2^(1/2)/2, 1/3, 2^(1/2)/12, 1/30, 2^(1/2)/180]

% w(n) = 1/factorial(n)*(sqrt(2)*(cos(pi/4)+1i*sin(pi/4)))^(n-1)
w(n) = 1/factorial(n)*(2^((n-1)/2))*(cos(pi*(n-1)/4)+1i*sin(pi*(n-1)/4))
for k=1:6
    w2(k)=w(k);
end
disp(w2)
% [ 1, 1/2 + 1i/2, 1i/3, - 1/12 + 1i/12, -1/30, - 1/180 - 1i/180]
% Module
r2(n)=(2^((n-1)/2))/factorial(n)
for k=1:6
    r3(k)=r2(k);
end
disp(r3)
% [ 1, 2^(1/2)/2, 1/3, 2^(1/2)/12, 1/30, 2^(1/2)/180]

Lr=limit(r2(n),n,inf)
% 0
% Module of series converges => series absolutely converges