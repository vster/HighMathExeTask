% Find the sum of the first 8 terms of the geometric progression
% 3,6,12,...

% a(n)=a(1)*q^(n-1)
% S(n)=a(1)+a(2)+...+a(n)=a(1)*(1-q^n)/(1-q)

syms n q a1;
q=2
a1=3
a(n)=a1*q^(n-1)

syms i;
for i=2:8
    a2(i)=a(i);
end
a2
% [ 1, 6, 12, 24, 48, 96, 192, 384]

n=8
S8=a(1)*(1-q^n)/(1-q)
% 765

syms n;
S8_2=symsum(a(n),n,1,8)
% 765