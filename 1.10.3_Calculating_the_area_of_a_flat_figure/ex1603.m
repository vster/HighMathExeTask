syms t;
x=12*cos(t)+5*sin(t)
y=5*cos(t)-12*sin(t)

ezplot(x,y)

dx=diff(x)

yxt=y*dx

S=int(yxt,0,2*pi)