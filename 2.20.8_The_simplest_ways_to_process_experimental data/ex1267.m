clear
x=[-pi -pi/2 0 pi/2 pi]
y=sin(x)
xx=-pi:0.1*pi:pi
yy=spline(x,y,xx);
plot(x,y,'o',xx,yy)
grid