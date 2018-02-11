syms x y;
z=x^2*y^3
D5z2x3y=diff(z,x,x,y,y,y)
D5z3y2x=diff(z,y,y,y,x,x)

D5z2x3y=diff(diff(z,x,2),y,3)
D5z3y2x=diff(diff(z,y,3),x,2)