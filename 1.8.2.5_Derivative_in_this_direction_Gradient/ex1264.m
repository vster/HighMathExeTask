syms x y
z=x^2-y^2
M=[1 1]

alfa=60*pi/180

dzx=diff(z,x)
dzy=diff(z,y)

dzxM=subs(dzx,[x y],M)
dzyM=subs(dzy,[x y],M)

dzl=dzxM*cos(alfa)+dzyM*sin(alfa)
vpa(dzl)

gdz=gradient(z)
gdzM=subs(gdz,[x y],M)
dzl2=gdzM(1)*cos(alfa)+gdzM(2)*sin(alfa)