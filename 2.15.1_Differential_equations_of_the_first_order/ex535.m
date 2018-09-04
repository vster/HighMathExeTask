% Solve equation
% y'=(cos(y)-sin(y)-1)/(cos(x)-sin(x)+1)

% 1)
% dy/dx=(cos(y)-sin(y)-1)/(cos(x)-sin(x)+1)
% dy/(cos(y)-sin(y)-1)-dx/(cos(x)-sin(x)+1)=0
syms x y;
eq1=int(1/(cos(y)-sin(y)-1),y)-int(1/(cos(x)-sin(x)+1),x)
% 2*atanh(2*tan(y/2) + 1) + log(1 - tan(x/2)) = C

% 2)
clear
syms x y(x);
eqn=diff(y(x),x)==(cos(y)-sin(y)-1)/(cos(x)-sin(x)+1)
ySol=dsolve(eqn)
ySol=simplify(ySol)
%                                                                              0
%                                                                          -pi/2
% 2*atan(tanh(C7/2 + atanh(tan(x/2 + pi/8)*(2^(1/2) - 1)))*(2^(1/2) - 1)) - pi/4