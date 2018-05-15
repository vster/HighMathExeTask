% I = int (K) ds/(x^2+y^2+z^2)
% where K - first coil of the helix
% x=a*cos(t),y=a*sin(t),z=b*t

syms t a b;
assume(a>0)
assume(b>0)
x=a*cos(t)
y=a*sin(t)
z=b*t
ds=sqrt(diff(x)^2+diff(y)^2+diff(z)^2)
ds=simplify(ds)
% (a^2 + b^2)^(1/2)

df=ds/(x^2+y^2+z^2)
df=simplify(df)
% (a^2 + b^2)^(1/2)/(a^2 + b^2*t^2)
I=int(df,t,0,2*pi)
% (atan((2*pi*b)/a)*(a^2 + b^2)^(1/2))/(a*b)
