syms x y;
f1(x,y)=x*y-20
f2(x,y)=x^2+y^2-41
digits(3)

ezplot(f1)
hold on
ezplot(f2)
hold off

slv=solve(x*y==20,x^2+y^2==41)
slv.x

% ys=sqrt(41-x^2)-20/x
y1=20/x
y2=sqrt(41-x^2)
S=int(y2-y1,4,5)
S=simplify(S)
pretty(S)
vpa(S)