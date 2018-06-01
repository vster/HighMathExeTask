% Calculate area of area R:, bounded by lines
% y^2=a^2-a*x, y=a+x

syms x y a;
eq1=y^2-a^2+a*x
eq2=y-x-a
slv=solve(eq1==0,eq2==0,x,y)
A=[slv.x(1) slv.y(1)]
% [ 0, a]
B=[slv.x(2) slv.y(2)]
% [ -3*a, -2*a]

x1=a-y^2/a
x2=y-a

S=int(int(1,x,x2,x1),y,-2*a,a)
% (9*a^2)/2
