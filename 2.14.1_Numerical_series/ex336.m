% Find the product of absolutely convergent series
% 1+1/3+1/9+1/27+...+1/3^(n-1)+... and
% 1-1/3+1/9-1/27+...+(-1)^(n-1)/3^(n-1)

clear
syms n;
digits(4)
u1(n)=1/3^(n-1);
u2(n)=(-1)^(n-1)/3^(n-1);

S1=symsum(u1(n),n,1,inf)
% 3/2
S2=symsum(u2(n),n,1,inf)
% 3/4

S3=S1*S2
% 9/8

u4(n)=1/9^(n-1)
S4=symsum(u4(n),n,1,inf)
% 9/8 