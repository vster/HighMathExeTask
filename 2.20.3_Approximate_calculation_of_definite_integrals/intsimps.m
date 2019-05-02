function [I,Rn]=intsimps(f,a,b,n)
syms x
h=(b-a)/n;
X=a:h:b;
Y=vpa(f(X));
S1=sum(Y(2:2:n));
S2=sum(Y(3:2:n));
I=h/3*((Y(1)+Y(n+1))+4*S1+2*S2);
d4f(x)=simplify(diff(f,x,4));
M3=max(abs(d4f(X)));
Rn=vpa(h^4/180*(b-a)*M3);
end