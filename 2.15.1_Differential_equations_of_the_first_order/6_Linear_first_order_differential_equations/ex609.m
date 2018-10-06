% Solve equation
% y'-y/sin(x)=cos(x)^2*log(tan(x/2))

% 1)
clear
syms x y(x)
eqn=diff(y)-y/sin(x)==cos(x)^2*log(tan(x/2))
ySol=simplify(dsolve(eqn))
% tan(x/2)*(C20 + int((log(tan(x/2))*cos(x)^2)/tan(x/2), x))

% Checking
for i=1:1
eqn10=diff(y)-y/sin(x)-cos(x)^2*log(tan(x/2))
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
syms x y
a(x)=-1/sin(x)
f(x)=cos(x)^2*log(tan(x/2))
u(x)=simplify(exp(int(a(x),x)))
% 1/tan(x/2)
syms C
y(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% tan(x/2)*(C + int((log(tan(x/2))*cos(x)^2)/tan(x/2), x))