% Вычислить момент инерции
% y=2*sqrt(x), x+y=3, x=0, y=0

syms x y;
y1=2*sqrt(x)
y2=3-x

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

x1=(y/2)^2
x2=3-y

slv=solve(y==2*sqrt(x), x+y==3)
[slv.x slv.y]
% [ 1, 2]
Ix=int(int(y^2,x,x1,x2),y,0,2)
vpa(Ix)
% 2.4
Iy=int(int(x^2,x,x1,x2),y,0,2)
vpa(Iy)
% 6.57