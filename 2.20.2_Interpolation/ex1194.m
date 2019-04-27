clear
X=[0 2 3 4]
Y=[3 1 5 7]
n=length(X)

syms x phi(x) f(x)

phi(x)=1
for k=1:n
    phi(x)=phi(x)*(x-X(k));
end
phi % = x*(x - 2)*(x - 3)*(x - 4)

dphi(x)=diff(phi,x)
% x*(x - 2)*(x - 3) + x*(x - 2)*(x - 4) + x*(x - 3)*(x - 4) + (x - 2)*(x - 3)*(x - 4)

f(x)=0;
for k=1:n
    f(x)=f(x)+Y(k)*phi(x)/(dphi(X(k))*(x-X(k)));  
end
f(x)=simplify(f(x))
% - (2*x^3)/3 + 5*x^2 - (25*x)/3 + 3

f2=interpol(X,Y)
% - (2*x^3)/3 + 5*x^2 - (25*x)/3 + 3