clear
syms m a
a1=4
PP(m)=(a^m/factorial(m))*exp(-a)
for i=0:10
    x(i+1)=i;
    P1(i+1)=subs(PP(i),a,a1);
end
x
P1

MX=vpa(sum(x.*P1))
MX1=a1

DX=vpa(sum(P1.*(x-MX).^2))
DX1=a1
