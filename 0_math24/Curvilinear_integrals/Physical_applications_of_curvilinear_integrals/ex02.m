% Determine the mass of the wire having the arc shape of the circle 
% x^2 + y^2 = 1 from point A (1,0) to B (0,1) with density
% ro(x,y)=x*y

syms t;
x=cos(t)
y=sin(t)
% [0,pi/2]
ro=x*y

f=ro*sqrt(diff(x,t)^2+diff(y,t)^2)
f=simplify(f)
% sin(2*t)/2
m=int(f,t,0,pi/2)
% 1/2

