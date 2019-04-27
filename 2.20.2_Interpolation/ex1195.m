clear
X=[1 3 4 6]
Y=[-7 5 8 14]
n=length(X)

syms x phi(x) f(x)

phi(x)=1
for k=1:n
    phi(x)=phi(x)*(x-X(k));
end
phi % = (x - 1)*(x - 3)*(x - 4)*(x - 6)

dphi(x)=diff(phi,x)
% (x - 1)*(x - 3)*(x - 4) + (x - 1)*(x - 3)*(x - 6) + (x - 1)*(x - 4)*(x - 6) + (x - 3)*(x - 4)*(x - 6)

f(x)=0;
for k=1:n
    f(x)=f(x)+Y(k)*phi(x)/(dphi(X(k))*(x-X(k)));  
end
f(x)=simplify(f(x))
% x^3/5 - (13*x^2)/5 + (69*x)/5 - 92/5

f2=interpol(X,Y)
% x^3/5 - (13*x^2)/5 + (69*x)/5 - 92/5

