syms x y;
eq1=3*y^2-25*x
eq2=5*x^2-9*y

ezplot(eq1)
hold on
ezplot(eq2)
hold on
grid on

slv=solve(eq1==0,eq2==0)
pp=[slv.x,slv.y]

y1=5*x^2/9
y2=sqrt(25*x/3)

S=int(int(1,y,y1,y2),x,0,3)
% 5