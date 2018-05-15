% I = int (K) sqrt(x^2+y^2) ds,
% where K - circle x^2+y^2=ax

syms x a;
y=sqrt(a*x-x^2)
dy=diff(y,x)
ds=sqrt(1+dy^2)
ds=simplify(ds)
% (a^2/(4*x*(a - x)))^(1/2)
ds=a/sqrt(4*x*(a-x))

I=2*int(sqrt(x^2+y^2)*ds,x,0,a)
% 2*a^2


