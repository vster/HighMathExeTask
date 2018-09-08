% Find the general integral of equation
% (x^2+2*x*y)*dx+x*y*dy=0

% 1)
syms x y dx dy
eq1=(x^2+2*x*y)*dx+x*y*dy
syms t dt
y1=t*x
dy1=x*dt+t*dx
eq2=subs(eq1,[y dy],[y1 dy1])
% dx*(2*t*x^2 + x^2) + t*x^2*(dx*t + dt*x)
eq2=expand(eq2)
% dx*t^2*x^2 + dt*t*x^3 + 2*dx*t*x^2 + dx*x^2
% dx*(t^2*x^2 + 2*t*x^2 + x^2) + dt*t*x^3 
% dx/x+dt*t/(t+1)^2
eq3=int(1/x,x)+int(t/(t+1)^2,t)
% log(t + 1) + log(x) + 1/(t + 1) = C
% log((t+1)*x)+1/(t + 1) = C
% t=y/x
% log((y/x+1)*x)+1/(y/x+1)=C
% log(y+x)+x/(y+x)=C

% 2)
% (x^2+2*x*y)*dx+x*y*dy=0
% dy/dx=-(x^2+2*x*y)/x
syms x y(x)
eqn=diff(y(x),x)==-(x^2+2*x*y)/x
ySol=dsolve(eqn)
% (C9*exp(-2*x))/4 - x/2 + 1/4

eq2=simplify(diff(ySol,x)+(x^2+2*x*ySol)/x)
