% h = 3.5 Ï
% r = 1.5 Ï
% ro = 900 Í„/Ï^3
% P=ro*g*h*S
syms ro g h r;
dP=ro*g*x*(2*pi*r)
P=int(dP,x,0,h)
% pi*g*h^2*r*ro
P=subs(P,[g h r ro],[9.8 3.5 1.5 900])
digits(4)
vpa(P)