syms a b alfa real;
assume(alfa>=0 & alfa<=pi/2)

L=a/sin(alfa)+b/cos(alfa)

dL=diff(L,alfa)
dL=factor(dL)
% a*cos(alfa)^3 - b*sin(alfa)^3 = 0
alfa1=atan((a/b)^(1/3))

L1=subs(L,alfa,alfa1)
L1=simplify(L1)
pretty(L1)




