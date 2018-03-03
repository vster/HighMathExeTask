syms x y;
y1=sqrt(4*x^3)
y2=2*x^2

ezplot(y1)
hold on
ezplot(y2)
hold off

slv=solve(y^2==4*x^3,y==2*x^2)

S=int(sqrt(4*x^3)-2*x^2,0,1)