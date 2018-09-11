% 1)
% sqrt(x^2+y^2)=-x+y/y'
% (sqrt(x^2+y^2)+x)*dy-y*dx=0
syms x y dx dy;
eq1=(sqrt(x^2+y^2)+x)*dy-y*dx
% x=t*y
x1=t*y
dx1=dt*y+t*dy
eq2=subs(eq1,[x dx],[x1,dx1])
eq2=simplify(eq2)
% dy*(y^2*(t^2 + 1))^(1/2) - dt*y^2
% dy*(t^2 + 1)^(1/2)-dt*y=0
eq3=dy/y-dt/(t^2 + 1)^(1/2)
eq4=int(1/y,y)-int(1/(t^2 + 1)^(1/2),t)
% log(y) - asinh(t)
syms C;
eq5=log(y) - asinh(t)- log(C)
eq6=simplify(exp(eq5))
% y/(C*(t + (t^2 + 1)^(1/2)))=1
% y=C*(t + (t^2 + 1)^(1/2))
eq7=y-C*(t + (t^2 + 1)^(1/2))
eq8=subs(eq7,t,x/y)
% y - C*(x/y + (x^2/y^2 + 1)^(1/2))
y=C*(x/y + (x^2/y^2 + 1)^(1/2))
% y^2=C*(x+sqrt(x^2+y^2))
% y^2=2*C*(x+C/2)

% 2)
% sqrt(x^2+y^2)=-x+y/y'
% sqrt(x^2+y^2)+x=y/y'
% y'=y/(sqrt(x^2+y^2)+x)
syms x y(x);
eqn=diff(y)==y/(sqrt(x^2+y^2)+x)
ySol=dsolve(eqn)
%                      0
%  (C9*(C9 + 2*x))^(1/2)
% -(C9*(C9 + 2*x))^(1/2)
%                   x*1i
%                  -x*1i