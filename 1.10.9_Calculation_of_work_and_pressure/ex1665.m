syms x d ro g dx real;
d=6
g=9.8
ro=1000
r=d/2

dP=2*ro*g*x*sqrt(r^2-x^2)
% 19600*dx*x*(9 - x^2)^(1/2)
P=int(19600*x*(9 - x^2)^(1/2),x,0,r)
% 176400

clear
syms x r ro g real;
dP=2*ro*g*x*sqrt(r^2-x^2)
P=int(dP,x,0,r)
% P=(2*g*r^3*ro)/3
P=subs(P,[g r ro],[9.8 3 1000])
% 176400