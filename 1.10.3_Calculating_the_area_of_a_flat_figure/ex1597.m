syms x y;
y1=16/x^2
y2=17-x^2

ezplot(y1)
hold on
ezplot(y2)
hold off

slv=solve(y==16/x^2,y==17-x^2)

a=1
b=4

S=int(17-x^2-16/x^2,1,4)