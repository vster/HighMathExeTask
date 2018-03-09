syms x;
y=x^3;

dy=diff(y)

y1=1+dy^2
y1=factor(y1)

y2=y*sqrt(y1)

S=simplify(2*pi*int(y2,0,1/2))