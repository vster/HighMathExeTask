% Find the sum of the series
% S7=1-1/2^(1/2)+1/2-...+1/8

% a(n)=a(1)*q^(n-1)
% S(n)=a(1)+a(2)+...+a(n)=a(1)*(1-q^n)/(1-q)

syms n q a1;
q=sym(-1/2^(1/2))
a1=1
a(n)=a1*q^(n-1)

syms i;
for i=1:8
    a2(i)=a(i);
end
a2
% 1.0000   -0.7071    0.5000   -0.3536    0.2500   -0.1768    0.1250   -0.0884

n=sym(8)
S8=a(1)*(1-q^n)/(1-q)
% 15/(16*(2^(1/2)/2 + 1))
pretty(S8)
vpa(S8)
% 0.5492

syms n;
S8_2=symsum(a(n),n,1,8)
% 15/8 - (15*2^(1/2))/16
pretty(S8_2)
vpa(S8_2)
% 0.5492

d=simplify(S8-S8_2)
% 0