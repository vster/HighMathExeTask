% y'=x-y
% y(0)=1
clear
syms x y t
f=x-y
X(1)=0;
Y(1)=sym(1);

for j=2:6
    F=subs(f,y,Y(j-1));
    F=subs(F,x,t);
    Y(j)=expand(Y(1)+int(F,t,X(1),x));
end
Y.'
%                                               1
%                                   x^2/2 - x + 1
%                           - x^3/6 + x^2 - x + 1
%                    x^4/24 - x^3/3 + x^2 - x + 1
%        - x^5/120 + x^4/12 - x^3/3 + x^2 - x + 1
% x^6/720 - x^5/60 + x^4/12 - x^3/3 + x^2 - x + 1
y2=2*taylor(exp(-x),x,'Order',7)+x-1
% x^6/360 - x^5/60 + x^4/12 - x^3/3 + x^2 - x + 1
chk1=y2-Y(6)
% x^6/720

clear
syms x y(x)
eq1=diff(y,x)-x+y
ySol2=dsolve(eq1,y(0)==1)
% x + 2*exp(-x) - 1
chk2=subs(eq1,y,ySol2)