syms x y r;
f=x^2/a^2+y^2/b^2-1

y=sqrt(r^2-x^2)

% y=4*sqrt(1-x^2/3^2)

% ezplot(y)

dy=diff(y)

y2=simplify(y*sqrt(1+dy^2))
pretty(y2)
y2=r

S=simplify(2*pi*int(y2,x,-r,r))