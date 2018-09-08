% Solve equation
% sec(x)^2*tan(y)*dx+sec(y)^2*tan(x)*dy=0
% y(pi/4)=pi/4

% 1)
% sec(x)^2*dx/tan(x)+sec(y)^2*dy/tan(y)=0
% dx/(cos(x)^2*tan(x))+dy/(cos(y)^2*tan(y))=0
% dx/(sin(x)*cos(x)+dy/(cos(y)*sin(y))=0
syms x y;
eq1=int(1/(sin(x)*cos(x)),x)+int(1/(sin(y)*cos(y)),y)
% log(tan(x)) + log(tan(y))=log(C)
syms C
eq2=tan(x)*tan(y)-C
eq3=subs(eq2,[x y],[pi/4 pi/4])
% C=1
% tan(x)*tan(y)=1

% 2)
% sec(x)^2*tan(y)*dx+sec(y)^2*tan(x)*dy=0
% y'=-(sec(x)^2*tan(y))/(sec(y)^2*tan(x))
% y'=-(cos(y)^2*tan(y))/(cos(x)^2*tan(x))
% y'=-(cos(y)*sin(y))/((cos(x)*sin(x))
syms x y(x);
eqn=diff(y(x),x)==-(cos(y)*sin(y))/(cos(x)*sin(x))
cond=y(pi/4)==pi/4
ySol=dsolve(eqn,cond)
% y=pi/2 - acos(cos(2*x))/2

% Checking
ySol2=pi/2 - acos(cos(2*x))/2
eq5=diff(y(x),x)+(cos(y)*sin(y))/(cos(x)*sin(x))
eq6=simplify(subs(eq5,y,ySol2))
% 0



