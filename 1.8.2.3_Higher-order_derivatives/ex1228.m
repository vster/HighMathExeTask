syms x y;
z=y*log(x)
Dzx=diff(z,x)
Dzy=diff(z,y)
D2z2x=diff(Dzx,x)
D2zxy=diff(Dzx,y)
D2z2y=diff(Dzy,y)

D2z2x=diff(z,x,2)
D2zxy=diff(z,x,y)
D2z2y=diff(z,y,2)