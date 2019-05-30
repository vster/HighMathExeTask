% y'=x-y
% y(0)=1
clear
syms x y t
f=x-y
X(1)=0;
Y(1)=sym(1);

for j=2:4
    F=subs(f,y,Y(j-1));
    F=subs(F,x,t);
    Y(j)=expand(Y(1)+int(F,t,X(1),x));
end
Y.'
%                            1
%                x^2/2 - x + 1
%        - x^3/6 + x^2 - x + 1
% x^4/24 - x^3/3 + x^2 - x + 1
syms n
ySol=1+symsum((-1)^(n+1)*x^(n+1)/factorial(n+1),n,0,inf)
% exp(-x)
% ???

clear
syms x y(x)
eq1=diff(y,x)-x+y
ySol2=dsolve(eq1,y(0)==1)
% x + 2*exp(-x) - 1
chk=subs(eq1,y,ySol2)