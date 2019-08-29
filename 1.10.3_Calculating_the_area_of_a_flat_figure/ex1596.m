% Calculate the area of a figure bounded by given lines
% y=-x^2, x+y+2=0
syms x y;
y1=-x^2
y2=-x-2

ezplot(y1)
hold on
ezplot(y2)
hold off

slv=solve(y==-x^2,x+y+2==0)
slv.x
% 2,-1

% S = int (a-b) (f2(x)-f1(x)) dx
S=int(f1-f2,x,-1,2)
% 9/2