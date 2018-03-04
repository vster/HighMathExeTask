syms x;
y1=0.25*x^2
y2=3*x-0.5*x^2

ezplot(y1)
hold on
ezplot(y2)
hold off

syms x y;
slv1=solve(y==0.25*x^2,y==3*x-0.5*x^2)
slv1.x

y3=y2-y1
S=int(y3,0,4)