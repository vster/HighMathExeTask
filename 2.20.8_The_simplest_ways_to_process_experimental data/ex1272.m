clear
x=-1:0.5:1
y=log(2+x)
xx=-1:0.1:1
yy=spline(x,y,xx);
plot(x,y,'o',xx,yy)
grid