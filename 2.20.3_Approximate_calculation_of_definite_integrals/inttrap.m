function [I,Rn]=inttrap(f,a,b,n)
syms x
h=(b-a)/n;
X=a:h:b;
Y=vpa(f(X));
I=h*((Y(1)+Y(n+1))/2+sum(Y(2:n)));
d2f(x)=diff(f,x,2);
M2=max(abs(d2f(X)));
Rn=vpa(h^2/12*(b-a)*M2);
end