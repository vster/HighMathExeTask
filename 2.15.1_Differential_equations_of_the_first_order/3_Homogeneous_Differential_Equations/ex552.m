% x*y'*log(y/x)=x+y*log(y/x)
% y'=(x+y*log(y/x))/(x*log(y/x))

% 1)
syms x y(x);
% eqn=diff(y,x)==(x+y*log(y/x))/(x*log(y/x))
eqn=diff(y,x)==1/log(y/x)+y/x
ySol=dsolve(eqn)

% 2)
% x*y'*log(y/x)=x+y*log(y/x)
% dy*log(y/x)=(1+y/x*log(y/x))*dx
syms x y dx dy;
eq1=dy*log(y/x)-(1+y/x*log(y/x))*dx
y1=x*t
dy1=dx*t+x*dt
eq2=subs(eq1,[y dy],[y1 dy1])
% log(t)*(dx*t + dt*x) - dx*(t*log(t) + 1)
eq2=expand(eq2)
% dt*x*log(t) - dx
eq3=dt*log(t)-dx/x
eq4=int(log(t),t)-int(1/x,x)
% t*(log(t) - 1) - log(x)
eq5=t*(log(t) - 1) - log(x)
% y/x*(log(y/x)-1)-log(x)+C=0
% log(x)=y/x*(log(y/x)-1)+C