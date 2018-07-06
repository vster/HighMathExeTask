% Determine whether the sequence converges or diverges
% a(n)=(2*n+3)/(5*n-7)

syms n;
a(n)=(2*n+3)/(5*n-7)
L=limit(a(n),n,inf)
% 2/5

syms i;
for i=1:10
     a1(i)=a(i);   
end
a1
% [ -5/2, 7/3, 9/8, 11/13, 13/18, 15/23, 17/28, 19/33, 21/38, 23/43]
