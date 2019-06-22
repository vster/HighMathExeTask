clear
digits(5)
X=[87.5 84.0 77.8 63.7 46.7 36.9]
Y=[292 283 270 235 197 181]
% y=a0+a1*x+a2*x^2
syms a0 a1 a2 x
delta=vpa(a0+a1*X+a2*X.^2)-Y
eq1=sum(delta(1:2))
eq2=sum(delta(3:4))
eq3=sum(delta(5:6))
[a0 a1 a2]=solve([eq1 eq2 eq3])
% a0 =
% 107.72
% a1 =
% 1.7962
% a2 =
% 0.0035015
y1=a0+a1*x+a2*x^2
% 0.0035015*x^2 + 1.7962*x + 107.72