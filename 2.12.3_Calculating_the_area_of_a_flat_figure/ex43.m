syms x y;
eq1=y^2-4*x+x^2
eq2=y^2-2*x


ezplot(eq1)
hold on
ezplot(eq2)
hold off

y1=sqrt(4*x-x^2)
y2=sqrt(2*x)

slv=solve(eq1==0,eq2==0)
pp=[slv.x, slv.y]

S=2*int(int(1,y,sqrt(2*x),sqrt(4*x-x^2)),x,0,2)
% 2*pi - 16/3