m1=2.2
sig1=0.5

syms m sig a b
Pab=erfn((b-m)/sig)-erfn((a-m)/sig)

digits(4)
P1=subs(Pab,[m sig a b],[m1 sig1 3 4])
vpa(P1)
% 0.05464
P2=subs(Pab,[m sig a b],[m1 sig1 1 2])
vpa(P2)
% 0.3364
P3=P1*P2
% 0.01838