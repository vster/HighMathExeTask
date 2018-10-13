% Integrate the equation
% y''-y'/x+y/x^2=0
% having a particular solution 
% y1=x

% 1)
clear
syms x
syms y(x)
eqn=diff(y,x,2)-diff(y,x)/x+y/x^2==0
ySol=dsolve(eqn)
% C17*x - C16*x*log(x)

% Checking
eqn10=diff(y,x,2)-diff(y,x)/x+y/x^2
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
clear
syms x y dy d2y 
eq1=d2y-dy/x+y/x^2
y1=x

syms z(x)
y2=y1*int(z,x)
% x*int(z(x), x)
dy2=diff(y2,x)
% x*z(x) + int(z(x), x)
d2y2=diff(dy2,x)
% 2*z(x) + x*diff(z(x), x)
eq2=simplify(subs(eq1,[y dy d2y],[y2 dy2 d2y2]))
% x*diff(z(x), x) + z(x)
% dz/dx+z/x=0
% dz/z+dx/x=0
% z=C1/x
syms C1 C2
z1=C1/x
Iz=int(z1,x)
% C1*log(x)+C2
y3=x*(C1*log(x)+C2)

syms x y(x)
eqn10=diff(y,x,2)-diff(y,x)/x+y/x^2
chk2=simplify(subs(eqn10,y(x),y3))
% 0