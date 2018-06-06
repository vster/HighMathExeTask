% Find the curvilinear integral
% int (C) x*y*ds
% where the curve C is an arc of an ellipse 
% x^2/a^2+y^2/b^2=1
% lying in the first quadrant

syms a b t real;
x=a*cos(t)
y=b*sin(t)

% int (C) F(x,y)*ds = 
%   = int (alfa:beta) F(x(t),y(t))*sqrt(diff(x)^2+diff(y)^2)*dt

ds=sqrt(diff(x)^2+diff(y)^2)
f1=x*y*ds
% a*b*cos(t)*sin(t)*(a^2*sin(t)^2 + b^2*cos(t)^2)^(1/2)
I=int(f1,t,0,pi/2)
pretty(I)
I=a*b*(a^3-b^3)/(3*(a^2-b^2))
I=factor(I)
% (a*b*(a^2 + a*b + b^2))/(3*(a + b))