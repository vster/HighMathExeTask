syms x y;
f1=x*y-4*sqrt(2)
f2=x^2-6*x+y^2
% y=0,x=4

ezplot(f1)
hold on
ezplot(f2)
grid on
hold off

slv=solve(f1,f2)
slv.x

y1=4*sqrt(2)/x
y2=sqrt(6*x-x^2)
S=int(y2-y1,x,2,4)

