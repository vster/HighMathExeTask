% x^2+y^2=8
% x=0,y=0,z=0,x+y+z=4

syms x y;
slv=solve(x^2+y^2==8,x+y==4)

eq1=x^2+y^2-8
eq2=x+y-4

ezplot(eq1)
hold on
ezplot(eq2)
hold off
grid on

V=int(int(4-x-y,y,0,sqrt(8-x^2)),x,0,sqrt(8))
% 8*pi - (32*2^(1/2))/3