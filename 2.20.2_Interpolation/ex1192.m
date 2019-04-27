clear
X=[1 2 3 4]
Y=[2 3 4 5]
n=length(X)

syms x phi(x) f(x)

phi(x)=1
for k=1:n
    phi(x)=phi(x)*(x-X(k));
end
phi %= (x - 1)*(x - 2)*(x - 3)*(x - 4)

dphi(x)=diff(phi,x)
% (x - 1)*(x - 2)*(x - 3) + (x - 1)*(x - 2)*(x - 4) + (x - 1)*(x - 3)*(x - 4) + (x - 2)*(x - 3)*(x - 4)

f(x)=0
for k=1:n
    f(x)=f(x)+Y(k)*phi(x)/(dphi(X(k))*(x-X(k)));  
end
f(x)=simplify(f(x))
% x + 1

f2=interpol(X,Y)
% x + 1
