syms x y;
f1(x,y)=x*y-20
f2(x,y)=x^2+y^2-41
digits(3)

ezplot(f1)
hold on
ezplot(f2)
hold off

slv=solve(x*y==20,x^2+y^2==41)

ys=sqrt(41-x^2)-20/x

S=int(ys,4,5)
pretty(S)
vpa(S)