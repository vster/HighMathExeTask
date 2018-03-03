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

S=int(sqrt(2*(x^2-1))-(x-1)^2,1,3)

vpa(S)

