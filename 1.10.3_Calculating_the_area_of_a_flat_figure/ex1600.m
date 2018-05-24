clear;
syms x;
y1=sin(x);
y2=cos(x);
x=0;

ezplot(y1)
hold on
ezplot(y2)
plot([-6 6],[0 0])
grid on
hold on

syms x y;
slv1=solve(y==cos(x),y==sin(x))
slv1.x

S=int(y2-y1,x,0,pi/4)
% 2^(1/2) - 1


