% Use Combined Chord and Tangent Method

clear
syms x
f(x)=x^3+x^2-11
a=1
b=2
err=0.0001
digits(6)
fplot(f(x),[a b]);grid

df(x)=diff(f,x)
% 3*x^2 + 2*x
d2f(x)=diff(f,x,2)
% 6*x + 2

% In [1;2] d2x>0
x0=2
f(x0)
% 1 > 0

x11=vpa(x0-f(x0)/df(x0))
% 1.9375
x12=vpa(a-(b-a)*f(a)/(f(b)-f(a)))
% 1.9

f(x11)
% 0.0270996
f(x12)
% -0.531
df(x11)
% 15.1367

x21=x11-f(x11)/df(x11)
% 1.93571
x22=x12-(x11-x12)*f(x12)/(f(x11)-f(x12))
% 1.93568

for j=1:10
    x1=vpa(b-f(b)/df(b))
    x2=vpa(a-(b-a)*f(a)/(f(b)-f(a)))
    if abs(x2-x1)<err
        break;
    end
    if (x2>x1)
        a=x1;
        b=x2;
    else
        a=x2;
        b=x1;
    end    
end
% x1 =
% 1.93571
% x2 =
% 1.93568