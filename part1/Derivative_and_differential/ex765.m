syms x

y=sin(x)/cos(x)^2+log((1+sin(x))/cos(x))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid