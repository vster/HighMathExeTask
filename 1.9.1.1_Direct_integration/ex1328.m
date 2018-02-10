syms x;
y=2*x^3-5*x^2+7*x-3
subplot(2,1,1)
ezplot(y)
grid

F=int(y)
subplot(2,1,2)
ezplot(F)
grid