syms x y;
y1=-x^2
y2=-x-2

ezplot(y1)
hold on
ezplot(y2)
hold off

slv=solve(y==-x^2,x+y+2==0)

S=int(-x^2-(-x-2),-1,2)