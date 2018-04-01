% S=int(int(1),D)
% x=4*y-y^2
% x+y=6

syms x y;
x1=4*y-y^2
x2=6-y

% ezplot(x1)
% hold on
% ezplot(x2)
% hold 0ff

slv=solve(x==4*y-y^2, x+y==6)
A=[slv.x(1),slv.y(1)]
B=[slv.x(2),slv.y(2)]

S=int(int(1,x,6-y,4*y-y^2),y,2,3)
% 1/6
