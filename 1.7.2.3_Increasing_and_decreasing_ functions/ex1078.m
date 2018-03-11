syms alfa a b real;
% a=64
% b=27

% assume(alfa>=0 & alfa<=pi/2)
L=a/sin(alfa)+b/cos(alfa)
dL=diff(L,alfa)
dL=simplify(dL)
pretty(dL)

% alfa1=solve(dL==0,alfa)
% a*cos(alfa)^3 = b*sin(alfa)^3
tan_alfa=(a/b)^(1/3)
tan_alfa=(64/27)^(1/3)
alfa=atan(tan_alfa)

L=64/sin(alfa)+27/cos(alfa)
% 125 ì