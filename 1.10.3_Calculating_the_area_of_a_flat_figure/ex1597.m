syms x y;
y1=16/x^2
y2=17-x^2

ezplot(y1)
hold on
ezplot(y2)
hold off

slv=solve(y==16/x^2,y==17-x^2)
slv.x
% 4 -4 1 -1

% S = int (a-b) (f2(x)-f1(x)) dx
S=int(y2-y1,x,1,4)
% 18