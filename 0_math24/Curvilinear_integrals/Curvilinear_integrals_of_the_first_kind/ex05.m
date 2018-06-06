% Compute the integral
% int (C) (x^2+y^2)*z *ds
% where the curve C is given parametrically in the form 
% r(t)=(sin(3*t),cos(3*t),4*t), 0<=t<=pi

% int (C) F(x,y,z)*ds = 
%  = int(alfa:beta)F(x(t),y(t),z(t))*sqrt(diff(x)^2+diff(y)^2+diff(z)^2)dt

syms t;
x=sin(3*t)
y=cos(3*t)
z=4*t

f1=(x^2+y^2)*z
f1=simplify(f1)
% 4*t
ds=sqrt(diff(x)^2+diff(y)^2+diff(z)^2)
ds=simplify(ds)
% 5
I=int(f1*ds,t,0,pi)
% 10*pi^2
