clear
sig1=0.1
m1=25
dm=0.25
a1=m1-dm
b1=m1+dm
syms a b m sig
Pab=1/2*(erf((b-m)/(sig*sqrt(2)))-erf((a-m)/(sig*sqrt(2))))

P1=subs(Pab,[m sig a b],[m1 sig1 a1 b1])
% erf((5*2^(1/2))/4)
digits(4)
vpa(P1)
% 0.9876