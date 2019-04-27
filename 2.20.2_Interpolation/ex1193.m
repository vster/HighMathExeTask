clear
X=[2 4 6 8 10]
Y=[0 3 8 6 0]
n=length(X)

syms x phi(x) f(x)

phi(x)=1
for k=1:n
    phi(x)=phi(x)*(x-X(k));
end
phi % = (x - 2)*(x - 4)*(x - 6)*(x - 8)*(x - 10)

dphi(x)=diff(phi,x)
% (x - 2)*(x - 4)*(x - 6)*(x - 8) + (x - 2)*(x - 4)*(x - 6)*(x - 10) + 
%  (x - 2)*(x - 4)*(x - 8)*(x - 10) + (x - 2)*(x - 6)*(x - 8)*(x - 10) + 
%  (x - 4)*(x - 6)*(x - 8)*(x - 10)

f(x)=0;
for k=1:n
    f(x)=f(x)+Y(k)*phi(x)/(dphi(X(k))*(x-X(k)));  
end
f(x)=simplify(f(x))
% x^4/32 - (13*x^3)/16 + (55*x^2)/8 - (83*x)/4 + 20

f2=interpol(X,Y)
% x^4/32 - (13*x^3)/16 + (55*x^2)/8 - (83*x)/4 + 20