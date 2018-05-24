% Find the area of a figure bounded by a parabola
syms x y real;
f1=y-(x-1)^2;
f2=x^2-y^2/2-1
digits(3)

ezplot(f1,[0,4])
hold on
ezplot(f2,[0,4])
grid on
hold off

slv=solve(y==(x-1)^2,x^2-y^2/2==1)

A=slv.x(1)
B=slv.x(2)

% x^2-y^2/2=1 => y=sqrt(2*(x^2-1))
y1=sqrt(2*(x^2-1))
y2=(x-1)^2
S=int(y1-y2,x,1,3)
% 2^(1/2)*log(2^(1/2) - 1) + 10/3 - ?
vpa(S)
% 2.09 - ?

