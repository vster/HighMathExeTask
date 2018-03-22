syms x y;
% y=2-x^2
% y=2*x-1
f=x-y
slv=solve(y==2-x^2,y==2*x-1)

B=[slv.x(1),slv.y(1)]
A=[slv.x(2),slv.y(2)]

I=int(int(x-y,y,2*x-1,2-x^2),x,-3,1)
% 64/15
