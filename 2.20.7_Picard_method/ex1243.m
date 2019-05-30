% y'=x^2+y^2
% y(0)=0
clear
syms x y t
f=x^2+y^2
X(1)=0;
Y(1)=sym(0);

for j=2:4
    F=subs(f,y,Y(j-1));
    F=subs(F,x,t);
    Y(j)=expand(Y(1)+int(F,t,X(1),x));
end
Y.'