clear
X=[2 4 5 10]
Y=[3 7 9 19]
n=length(X)

syms x phi(x) f(x)

phi(x)=1
for k=1:n
    phi(x)=phi(x)*(x-X(k));
end
phi % = (x - 2)*(x - 4)*(x - 5)*(x - 10)

dphi(x)=diff(phi,x)
% (x - 2)*(x - 4)*(x - 5) + (x - 2)*(x - 4)*(x - 10) + (x - 2)*(x - 5)*(x - 10) + (x - 4)*(x - 5)*(x - 10)

f(x)=0;
for k=1:n
    f(x)=f(x)+Y(k)*phi(x)/(dphi(X(k))*(x-X(k)));  
end
f(x)=simplify(f(x))
% 2*x - 1

f2=interpol(X,Y)
% 2*x - 1