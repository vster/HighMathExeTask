syms x

y=sym(asin((2*x^2)/(1+x^4)))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid