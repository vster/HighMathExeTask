syms x y;
eq1=y^2-4*(1-x)
eq2=x^2+y^2-4

ezplot(eq1)
hold on
ezplot(eq2)
hold off
grid on

x1=-y^2/4+1
x2=sqrt(4-y^2)

S=2*int(int(1,x,x1,x2),y,0,2)
% 2*pi - 8/3