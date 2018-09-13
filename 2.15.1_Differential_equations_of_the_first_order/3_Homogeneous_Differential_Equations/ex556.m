% y'=4+y/x+(y/x)^2
% y(1)=2

% 1)
clear
syms x y(x)
eqn=diff(y,x)==4+y/x+(y/x)^2
cond=y(1)==2
ySol=dsolve(eqn,cond)
% - x*2i + (4*x)/(x^4i - 1i)

% 2)
% y'=4+y/x+(y/x)^2
syms x y dx dy
eq1=dy-(4+y/x+(y/x)^2)*dx
syms t dt
y1=x*t
dy1=dx*t+x*dt
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=simplify(eq2)
% - dx*t^2 - 4*dx + dt*x
% dt*x-dx*(t^2+4)
% dt/(t^2+4)-dx/x
eq3=int(1/(t^2+4),t)-int(1/x,x)
% atan(t/2)/2 - log(x)
syms C
% atan(t/2) = 2*log(x)+C
% atan(y/(2*x))=2*log(x)+C
% y=2*x*tan(2*log(x)+C)
eq4=y-2*x*tan(2*log(x)+C)
eq5=subs(eq4,[x y],[1 2])
% 2 - 2*tan(C) =0 => C=pi/4
% y=2*x*tan(2*log(x)+pi/4)