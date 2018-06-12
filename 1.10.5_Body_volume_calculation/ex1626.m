syms x y;
f1=y^2-(x-1)^3

ezplot(f1)
hold on
plot([2 2],[-6 6])
hold off
grid on

syms x;
V=pi*int((x-1)^3,1,2)
% pi/4