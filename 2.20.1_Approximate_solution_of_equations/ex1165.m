% Use tangent method
clear
syms x
f(x)=x^4-2*x-4
digits(6)

df(x)=diff(f,x)
% 4*x^3 - 2
d2f(x)=diff(f,x,2)
% 12*x^2

x0=1.7
y0=vpa(f(x0))
% 0.9521 > 0
d2y0=vpa(d2f(x0))
% 34.68 > 0

x1=vpa(x0-f(x0)/df(x0))
% 1.64606
x2=vpa(x1-f(x1)/df(x1))
% 1.64294
x3=vpa(x2-f(x2)/df(x2))
% 1.64293

err=0.0001
x=1.7;
for j=1:10
    xa(j)=vpa(x-f(x)/df(x))
    ya(j)=vpa(f(x))
    if (abs(xa(j)-x)<err)
        break;
    end
    x=xa(j);
end
% xa =
% [ 1.64606, 1.64294, 1.64293]
% ya =
% [ 0.9521, 0.0493874, 0.000157837]
