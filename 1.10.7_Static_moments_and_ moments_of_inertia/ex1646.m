syms x;
y=4-x^2
x1=3

ezplot(y,[-4 4])
grid on

% Ix - момент инерции
f1=y^3
Ix=1/3*int(f1,2,3)

% Не получается