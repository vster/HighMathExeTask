% y'=-y*cosh(x)
% y(0)=1
clear
syms x y t
f=-y*cosh(x)
X(1)=0;
Y(1)=sym(1);

for j=2:4
    F=subs(f,y,Y(j-1));
    F=subs(F,x,t);
    Y(j)=expand(Y(1)+int(F,t,X(1),x));
end
Y.'
%                                       1
%                             1 - sinh(x)
%               sinh(x)^2/2 - sinh(x) + 1
% sinh(x)^2/2 - sinh(x) - sinh(x)^3/6 + 1
ySol=exp(-sinh(x))