clear
digits(3)
syms x
y1(x)=x^2
y2(x)=x
C=[0 1]

f(x)=x^2-x
df(x)=diff(f)
% 2*x - 1
x1=1/2 % max

% ro0=max(abs(y1-y2)
ro0=vpa(abs(f(x1)))
% 0.25
