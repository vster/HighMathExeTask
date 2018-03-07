syms x;
y=sin(2*x)

dy=diff(y)

y2=y*sqrt(1+dy^2)

S=simplify(2*pi*int(y2,0,pi/2))