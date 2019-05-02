clear
digits(7)
X=[2.0 2.1 2.2 2.3 2.4 2.5]
Y=vpa(log10(X))
% [ 0.30103, 0.32222, 0.34242, 0.36173, 0.38021, 0.39794]
n=length(X)
DY=zeros(n-1,n-1)
x=2.03
h=0.1

for k=1:n-1
    DY(k,1)=Y(k+1)-Y(k)
end

for j=2:n-1
    for k=1:n-j
            DY(k,j)=DY(k+1,j-1)-DY(k,j-1)
    end
end

t1=(x-X(1))/h
% 0.3000

syms t
T(1)=t
for k=2:n-1
    T(k)=T(k-1)*(t-k+1)
end
T=subs(T,t,t1)

y=Y(1)
for k=1:n-1
    y=y+vpa(T(1)*DY(1,k)/factorial(k))
end
% ???
