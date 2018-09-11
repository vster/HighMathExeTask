% A(0;1)
% 1)
% sqrt(x^2+y^2)=y-x*y'
% sqrt(x^2+y^2)*dx-y*dx+x*dy=0
syms x y dx dy
eq1=sqrt(x^2+y^2)*dx-y*dx+x*dy
syms t dt
y1=t*x
dy1=x*dt+t*dx
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=simplify(eq2)
% dt*x^2 + dx*abs(x)*(t^2 + 1)^(1/2)
% dt/(t^2 + 1)^(1/2)+dx/x
eq3=int(1/(t^2 + 1)^(1/2),t)+int(1/x,x)
syms C;
% asinh(t) + log(x)=log(C)
% asinh(y/x)+log(x)=log(C)
eq4=asinh(y/x)+log(x)-log(C)
eq5=exp(eq4)
eq5=simplify(eq5)
% (x*(x^2 + y^2)^(1/2) + y*abs(x))/(C*abs(x))=1
% (x^2 + y^2)^(1/2) + y = C
% x^2 + y^2=(C-y)^2
% x^2=C*(C-2*y)
eq6=x^2-C*(C-2*y)
eq7=subs(eq6,[x y],[0 1])
% -C*(C - 2) => C=2
% x^2=2*(2-2*y)
% y=1-x^2/4
ySol=1-x^2/4

% 2)
% sqrt(x^2+y^2)=y-x*y'
% y'=(y-sqrt(x^2+y^2))/x
syms x y(x)
eqn=diff(y(x),x)==(y-sqrt(x^2+y^2))/x
cond=y(0)==1
ySol2=dsolve(eqn,cond)
% ySol2 = 1 - x^2/4