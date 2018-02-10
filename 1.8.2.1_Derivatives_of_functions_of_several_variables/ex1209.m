syms rho teta;
x=rho*cos(teta)
y=rho*sin(teta)
A=[diff(x,rho) diff(x,teta); diff(y,rho) diff(y,teta)]
simplify(det(A))