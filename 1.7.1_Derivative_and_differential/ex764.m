syms x

y=exp(x)*atan(exp(x))-log(sqrt(1+exp(2*x)))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid