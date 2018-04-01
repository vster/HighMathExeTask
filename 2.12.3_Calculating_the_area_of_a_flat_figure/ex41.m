syms x y;
% x=y^2-2*y
% x+y=0

x1=y^2-2*y
x2=-y

% ezplot(x1)
% hold on
% ezplot(x2)
% hold off

slv=solve(x==y^2-2*y,x+y==0)
A=[slv.x(1),slv.y(1)]
B=[slv.x(2),slv.y(2)]

S=int(int(1,x,y^2-2*y,-y),y,0,1)
% 1/6