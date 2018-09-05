% Solve equation
% 5*exp(x)*tan(y)*dx+(1-exp(x))sec(y)^2*dy=0

% 1)
% 5*exp(x)*dx/(1-exp(x))+dy/(cos(y)^2*tan(y))=0
% 5*exp(x)*dx/(1-exp(x))+dy/(sin(y)*cos(y))=0
syms x y;
eq1=int(5*exp(x)/(1-exp(x)),x)+int(1/(sin(y)*cos(y)),y)
% log(tan(y)) - 5*log(exp(x) - 1)=log(C)
% y=atan(C*(exp(x)-1)^5)
syms C;
y1=atan(C*(exp(x)-1)^5)

eq2=int(5*exp(x)/(1-exp(x)),x)+int(2/sin(2*y),y)
% log(tan(y)) - 5*log(exp(x) - 1)
% y2=atan(exp(C+5*log(exp(x) - 1)))

% 2)
% y'=-5*exp(x)*tan(y)/((1-exp(x))*sec(y)^2)
% y'=-5*exp(x)*sin(y)*cos(y)/(1-exp(x))
syms x y(x);
eqn=diff(y(x),x)==-5*exp(x)*sin(2*y)/(2*(1-exp(x)))
ySol=dsolve(eqn)
%                                  0
% atan(exp(C11 + 5*log(exp(x) - 1)))
