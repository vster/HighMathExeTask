syms x y f(x,y);
y1=-sqrt(1-x^2)
y2=1-x^2

ezplot(y1,[-2,2])
hold on
ezplot(y2,[-2,2])
hold off
grid on

I1=int(f,y,-sqrt(1-x^2),1-x^2)
I=int(I1,x,-1,1)
