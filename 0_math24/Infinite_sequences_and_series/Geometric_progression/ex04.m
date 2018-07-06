% Express an infinite periodic fraction of 0.131313 ... by a rational number.

% a(n)=a(1)*q^(n-1)
% S = sum(n=0:inf)q^n = 1/(1-q)

% S=13/100*(1+1/100+1/10000+...)

syms n q a1;
a1=13/100;
q=sym(1/100)
a(n)=a1*q^(n-1)

syms i;
for i=1:8
    a2(i)=a(i);
end
a2
% [ 13/100, 13/10000, 13/1000000, 13/100000000, 13/10000000000, 
%     13/1000000000000, 13/100000000000000, 13/10000000000000000]

S1=a(1)/(1-q)
% 13/99

syms n;
S2=symsum(a(n),n,1,inf)
% 13/99
