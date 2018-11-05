clear
syms m
p=0.8
q=1-p
n=20
PB(m)=comb(n,m)*p^m*q^(n-m)
for i=0:n
    x(i+1)=i;
    P1(i+1)=PB(i);
end

MX=sum(x.*P1)
MX1=n*p

DX=sum(P1.*(x-MX).^2)
DX1=n*p*q
    