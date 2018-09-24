% Integrate the equation y'*cos(x)^2+y=tan(x) 
% under the initial conditions y(0)=0

% 1)
clear
% y'=(-y+tan(x))/cos(x)^2
syms x y(x)
eqn=diff(y(x))==(-y+tan(x))/cos(x)^2
cond=y(0)==0
ySol=dsolve(eqn,cond)
ySol=simplify(ySol)
% (sin(x) - cos(x) + exp(-sin(x)/cos(x))*cos(x))/cos(x)
% tan(x)-1+exp(-tan(x))

% 2)
clear
% y'*cos(x)^2+y=0
% dy/dx*cos(x)^2+y=0
% dy/y+dx/cos(x)^2=0
syms x y
eq1=int(1/y,y)+int(1/cos(x)^2,x)
% log(y) + tan(x)=log(C)
% y=C*exp(-tan(x))
syms C(x)
y1=C(x)*exp(-tan(x))
eq2=diff(y1)*cos(x)^2+y1-tan(x)
eq2=simplify(eq2)
% -(sin(x) - exp(-sin(x)/cos(x))*cos(x)^3*diff(C(x), x))/cos(x) = 0
% -tan(x)+exp(-tan(x))*cos(x)^2*dC(x)=0
dC(x)=tan(x)*exp(tan(x))/cos(x)^2
C(x)=int(dC(x),x)
C(x)=expand(C(x))
% (exp(sin(x)/cos(x))*sin(x))/cos(x) - exp(sin(x)/cos(x))
% exp(tan(x)*(tan(x)-1)+C
% y=(exp(tan(x)*(tan(x)-1)+C)*exp(-tan(x))
% y=tan(x)-1+C*exp(-tan(x))
syms C2
eq3=y-tan(x)+1-C2*exp(-tan(x))
eq4=subs(eq3,[x y],[0 0])
% C2=1
% y=tan(x)-1+exp(-tan(x))