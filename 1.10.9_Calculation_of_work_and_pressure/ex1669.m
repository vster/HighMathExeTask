% h = 3.5 �
% r = 1.5 �
% ro = 900 ��/�^3
% P=ro*g*h*S
syms ro g h r;
dP=ro*g*x*(2*pi*r)
P=int(dP,x,0,h)
% pi*g*h^2*r*ro
P=subs(P,[g h r ro],[9.8 3.5 1.5 900])
digits(4)
vpa(P)