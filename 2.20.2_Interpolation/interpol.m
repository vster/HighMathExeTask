function f=interpol(X,Y)
syms x phi(x) f(x)
n=length(X);
phi(x)=1;
for k=1:n
    phi(x)=phi(x)*(x-X(k));
end
dphi(x)=diff(phi,x);
f(x)=0;
for k=1:n
    f(x)=f(x)+Y(k)*phi(x)/(dphi(X(k))*(x-X(k)));  
end
f(x)=simplify(f(x));
end