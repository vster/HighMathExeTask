syms x y;
f1=x*y-4*sqrt(2)
f2=x^2-6*x+y^2

ezplot(f1)
hold on
ezplot(f2)
grid on
hold off

slv1=solve(f1,f2)

S1=int(sqrt(6*x-x^2),0,2)
vpa(S1)
S2=int(4*sqrt(2)/x,2,4)
vpa(S2)
S=S1+S2
vpa(S)