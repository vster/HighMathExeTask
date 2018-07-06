% Find the sum of the series
% 1-0.37+0.37^2-0.37^3+...

% a(n)=a(1)*q^(n-1)
% S(n)=a(1)+a(2)+...+a(n)=a(1)*(1-q^n)/(1-q)

syms n q a1;
q=-0.37
a1=1
a(n)=a1*q^(n-1)

syms i;
for i=1:8
    a2(i)=a(i);
end
a2
%     1.0000   -0.3700    0.1369   -0.0507    0.0187   -0.0069    0.0026   -0.0009

n=Inf
S8=a(1)*(1-q^n)/(1-q)
% 100/137

syms n;
S8_2=symsum(a(n),n,1,inf)
% 100/137