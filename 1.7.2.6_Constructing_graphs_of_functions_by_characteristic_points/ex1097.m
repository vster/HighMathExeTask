syms x;
y=(1-x^3)^(1/3)

ezplot(y,[-4, 4])
hold on
% 1
% 2
% 3
assume(x,'real')
s_x=solve(y)
% 4
k1=limit(y/x,x,-inf)
b1=limit(y-k1*x,x,-inf)
x1=-4:4
y1=k1*x1+b1
plot(x1,y1,'m')
% 5
dy=simplify(diff(y))
s_dx=solve(dy)
% 6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)

grid
hold off