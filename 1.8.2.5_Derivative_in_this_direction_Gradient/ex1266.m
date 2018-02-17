syms x y;
z=log(x^2+y^2)
M=[3 4]

dzx=diff(z,x)
dzy=diff(z,y)

dzxM=subs(dzx,[x y],M)
dzyM=subs(dzy,[x y],M)

gdz=[dzxM dzyM]

dzl=sqrt(gdz(1)^2+gdz(2)^2)

gdz2=gradient(z)
gdz2M=subs(gdz2,[x y],M)
