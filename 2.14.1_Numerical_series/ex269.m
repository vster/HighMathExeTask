% Given the general term of the series
% un=n/(10^n+1)
% Write the first four members of the series

syms n;
u(n)=n/(10^n+1)
for n=1:4
    s1(n)=u(n)
end