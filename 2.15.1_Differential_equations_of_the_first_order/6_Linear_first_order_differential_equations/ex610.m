% Solve equation
% y'-y/(x*log(x))=x*log(x)
% y(e)=e^2/2

% 1)
clear
syms x y e
a(x)=-1/(x*log(x))
f(x)=x*log(x)
u(x)=simplify(exp(int(a(x),x)))
% 1/log(x)
syms C
y(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% log(x)*(x^2/2 + C)
y2=subs(y,x,e)
% log(e)*(e^2/2 + C) = e^2/2 + C = e^2/2 => C=0
% y=log(x)*x^2/2

% 2)
clear
syms x e y(x)
eqn=diff(y)-y/(x*log(x))==x*log(x)
cond=y(e)==e^2/2
ySol=simplify(dsolve(eqn,cond))
% (x^2*log(x))/2 + (log(x)*(e^2 - e^2*log(e)))/(2*log(e))
ySol=subs(ySol,log(e),1)
% (x^2*log(x))/2

% Checking
for i=1:1
eqn10=diff(y)-y/(x*log(x))-x*log(x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

