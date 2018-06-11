% Write the first four terms of the series
% sum (n=1:inf) n/(10^n+n)

syms n;
u(n)=n/(10^n+n)
for n=1:4
    a(n)=u(n)
end
%[ 1/11, 1/51, 3/1003, 1/2501]    