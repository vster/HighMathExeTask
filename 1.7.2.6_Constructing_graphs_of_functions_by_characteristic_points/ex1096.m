syms x;
y=(x^3+4)/x^2

ezplot(y)
hold on
% 1
assume(x~=0)
xv=0
plot([xv xv],[-7 20],'r')
% 2
% 3
assume(x,'real')
s_x=solve(y)
% 4
k1=limit(y/x,x,inf)
b1=limit(y-k*x,x,inf)
x1=-6:6
y1=k1*x1+b1
plot(x1,y1,'m')
% 5
dy=diff(y)
s_dx=solve(dy)
% 6
d2y=diff(y,2)
s_d2x=solve(d2y)

grid
hold off