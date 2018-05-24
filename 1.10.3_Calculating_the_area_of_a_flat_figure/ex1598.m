syms x y;
y1=sqrt(4*x^3)
y2=2*x^2

ezplot(y1)
hold on
ezplot(y2)
hold off

slv=solve(y^2==4*x^3,y==2*x^2)
slv.x
% 0 1

% S = int (a-b) (y2-y1) dx
S=int(y1-y2,x,0,1)
% 2/15