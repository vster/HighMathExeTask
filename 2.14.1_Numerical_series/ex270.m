% Find the general term of the series
% 1/2+3/2^2+5/2^3+7/2^4+...

syms n;
u(n)=(2*n-1)/2^n
for n=1:4
    s1(n)=u(n)
end