% Integrate the equation
% y''+2/x*y'+y=0 
% having a particular solution 
% y1=sin(x)/x

% 1)
syms x y dy d2y 
eq1=d2y+2/x*dy+y
y1=sin(x)/x

syms z(x)
y2=y1*int(z,x)
% (sin(x)*int(z(x), x))/x
dy2=diff(y2,x)
% (sin(x)*z(x))/x + (cos(x)*int(z(x), x))/x - (sin(x)*int(z(x), x))/x^2
d2y2=diff(dy2,x)
% (2*cos(x)*z(x))/x - (2*sin(x)*z(x))/x^2 - (2*cos(x)*int(z(x), x))/x^2 + (sin(x)*diff(z(x), x))/x - (sin(x)*int(z(x), x))/x + (2*sin(x)*int(z(x), x))/x^3
eq2=simplify(subs(eq1,[y dy d2y],[y2 dy2 d2y2]))
% (sin(x)*diff(z(x), x) + 2*cos(x)*z(x))/x
pretty(eq2)
% sin(x)*dz/dx+2*cos(x)*z=0
% dz/z+2*cos(x)/sin(x)*dx=0
syms z1
eq3=int(1/z1,z1)+2*int(cot(x),x)
% 2*log(sin(x)) + log(z1) => 
syms C1 C2
z(x)=C1/sin(x)^2
y2=sin(x)/x*int(C1/sin(x)^2,x)
y2=sin(x)/x*(C2-C1*cot(x))
% y=C2*sin(x)/x-C1*cos(x)/x

% 2)
clear
syms x
syms y(x)
eqn=diff(y,x,2)+2/x*diff(y,x)+y==0 
ySol=dsolve(eqn)
% (C12*exp(x*1i))/x + (C13*exp(x*1i)*exp(-x*2i)*1i)/(2*x)
% exp(x*1i)=cos(x)+1i*sin(x)
% exp(2*x*1i)=cos(2*x)+1i*sin(2*x)
ySol2=subs(ySol,[exp(x*1i) exp(2*x*1i)],[cos(x)+1i*sin(x) cos(2*x)+1i*sin(2*x)])
ySol2=simplify(ySol2)
% (2*C12*cos(x) + C13*cos(x)*1i + C12*sin(x)*2i + C13*sin(x))/(2*x)
% C21*cos(x)/x+C22*sin(x)/x

% 3)
syms x
a1=2/x
y1=sin(x)/x
y2=simplify(y1*int(exp(-int(a1,x))/y1^2))
% -cos(x)/x
% y=C1*sin(x)/x-C2*cos(x)/x
