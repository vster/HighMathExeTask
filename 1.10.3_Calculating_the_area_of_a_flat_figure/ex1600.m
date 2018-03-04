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

S1=int(sin(x),pi/4,pi)
S2=int(cos(x),pi/4,pi/2)
S=S1-S2
vpa(S)


