syms x real
assume (x~=5/3)

y=abs(3*x-5)
pretty(y)
subplot(3,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)
pretty(dy)

subplot(3,1,2)
% ezplot(dy)
grid

y2=simplify(int(dy))
pretty(y2)
subplot(3,1,3)
% ezplot(y2)
grid

c=simplify(y-y2)