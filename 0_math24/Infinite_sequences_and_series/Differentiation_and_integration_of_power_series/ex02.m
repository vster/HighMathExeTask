% Find the expansion in a power series for a rational fraction
% 1/(2-x)

clear
syms x n;
% 1/(2-x)=(1/2)/(1-x/2)

% Sum of geometrical progression
% S=a1/(1-q)
a1=1/2
q=x/2

u(x,n)=a1*q^(n-1)
% (x/2)^(n - 1)/2

syms i;
s=0
for i=1:5
    u2(i)=u(x,i);
    s=s+u2(i);
end
u2
% [ 1/2, x/4, x^2/8, x^3/16, x^4/32]
s
% x^4/32 + x^3/16 + x^2/8 + x/4 + 1/2

