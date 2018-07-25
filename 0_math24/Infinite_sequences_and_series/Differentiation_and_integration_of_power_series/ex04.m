% Find the representation in the form of a power series 
% of the function 
% log (1 + x), |x|<1.


syms x n;
f=log(1+x)

df=diff(f)
% 1/(x + 1)
u(x,n)=(-1)^(n-1)*x^(n-1)

syms i;
for i=1:5
     a(i)=u(x,i);
end
a
% [ 1, -x, x^2, -x^3, x^4]

u1(x,n)=int(u(x,n),x)
% piecewise(n == 0, -log(x), n ~= 0, -((-1)^n*x^n)/n)
u1(x,n)=(-1)^(n+1)*x^n/n

for i=1:5
     a1(i)=u1(x,i);
end
a1
% [ x, -x^2/2, x^3/3, -x^4/4, x^5/5]
