% y'=y*cos(x)
% y(0)=1
% -2<x<2
clear
syms x y t
f=y*cos(x)
X(1)=0;
Y(1)=sym(1);

for j=2:4
    F=subs(f,y,Y(j-1));
    F=subs(F,x,t);
    Y(j)=expand(Y(1)+int(F,t,X(1),x));
end
Y.'
%                                    1
%                           sin(x) + 1
%              sin(x) + sin(x)^2/2 + 1
% sin(x) + sin(x)^2/2 + sin(x)^3/6 + 1
% exp(sin(x))

clear
syms x y(x)
eq1=diff(y,x)-y*cos(x)
ySol=dsolve(eq1,y(0)==1)
% exp(sin(x))