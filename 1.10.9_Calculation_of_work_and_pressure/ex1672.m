clear
syms g y h r ro1 ro2;
% A=int(f(x),x,x0,x1)
% h = 3 м
% r = 1 м
% ro1 = 2500 кг/м^3
% ro2 = 1000 кг/м^3
V=1/3*pi*r^2*h
% Сила тяжести конуса
P1=g*ro1*V

V1=1/3*pi*r^2*y
V2=V-V1
V2=factor(V2)
% Выталкивающая сила
P2=g*ro2*V2

A=int(P1-P2,y,0,h)
% (pi*g*h^2*r^2*(2*ro1 - ro2))/6
A=subs(A,[g h r ro1 ro2],[9.8 3 1 2500 1000])