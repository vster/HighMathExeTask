clear
a1=60
b1=70
sig1=9
m1=65
syms a b m sig
Pab=1/2*(erf((b-m)/(sig*sqrt(2)))-erf((a-m)/(sig*sqrt(2))))

P1=subs(Pab,[m sig a b],[m1 sig1 a1 b1])
% erf((25*2^(1/2))/9)
digits(4)
vpa(P1)
% 0.4215