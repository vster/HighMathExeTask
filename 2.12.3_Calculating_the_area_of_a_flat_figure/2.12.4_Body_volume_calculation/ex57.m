% x^2+4*y^2+z=1
% z=0
syms x y;

eq1=x^2+4*y^2-1
ezplot(eq1)

V=2*int(int(1-x^2-4*y^2,y,sqrt(1-x^2),0),x,-1,1)
% pi/4