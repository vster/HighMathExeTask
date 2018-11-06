clear
sig1=0.9
m1=65
a1=64
b1=66
syms a b m sig
Pab=1/2*(erf((b-m)/(sig*sqrt(2)))-erf((a-m)/(sig*sqrt(2))))

P1=subs(Pab,[m sig a b],[m1 sig1 a1 b1])
digits(4)
vpa(P1)
% 0.7335