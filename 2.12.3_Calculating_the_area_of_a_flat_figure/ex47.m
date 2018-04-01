syms x y;
y1=4*x-x^2
y2=2*x^2-5*x

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

S=int(int(1,y,y2,y1),x,0,3)
% 27/2