syms x;
y=x^3;

dy=diff(y)

y2=y*sqrt(1+dy^2)

S=simplify(2*pi*int(y2,0,1/2))