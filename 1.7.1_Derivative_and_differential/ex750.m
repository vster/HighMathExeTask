syms x

y=sym((sin(x)-cos(x))/(sin(x)+cos(x)))
subplot(3,1,1)
ezplot(y)
grid

dy=diff(y)
subplot(3,1,2)
ezplot(dy)
grid

d2y=diff(dy)
subplot(3,1,3)
ezplot(dy)
grid