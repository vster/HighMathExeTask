% Determine whether the sequence converges or diverges
% a(n)=n^2/2^n

syms n;
a(n)=n^2/2^n
L=limit(a(n),n,inf)
% 0
S=symsum(a(n),n,1,inf)
% 6

syms i;
for i=1:10
     a1(i)=a(i);   
end
a1
% [ 1/2, 1, 9/8, 1, 25/32, 9/16, 49/128, 1/4, 81/512, 25/256]