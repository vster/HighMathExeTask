syms x t a;
y=x^3
y=a*t^3
% Какова скорость изменения абциссы от времени
digits(3)

% y=x^3=a*t^3
x=3^(1/3)*t
v=diff(x)
vpa(v)