clear
syms x y(x)
Ly=OperL(y)
% diff(y(x), x, x, x) + a(1)*diff(y(x), x, x) + a(2)*diff(y(x), x) + a(3)*y(x)
syms k
y=exp(k*x)
Ly=OperL(y)
% a(3)*exp(k*x) + k^3*exp(k*x) + k^2*a(1)*exp(k*x) + k*a(2)*exp(k*x)
L(k)=simplify(Ly/y)
% k^3 + a(1)*k^2 + a(2)*k + a(3)

% L(D)=D^3+3 =>
L(k)=k^3+3
y1=exp(k*x)/L(k)
% exp(k*x)/(k^3 + 3)
y1=subs(y1,k,2)
% exp(2*x)/11

function Ly=OperL(y,a)
syms n a(n) x
n=3;
Lterm(1)=a(n)*y;
for i=2:n
   Lterm(i)=diff(y,x,i-1)*a(n+1-i);
end
Lterm(n+1)=diff(y,x,n);
Ly=sum(Lterm);
end
