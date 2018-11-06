clear
m1=5
sig1=0.9

syms m sig a b
Pab=erfn((b-m)/sig)-erfn((a-m)/sig)

digits(4)
P1=subs(Pab,[m sig a b],[m1 sig1 4 7])
vpa(P1)
% 0.8536

P2=2*erfn(2/sig1)
vpa(P2)
% 0.9737

syms delta
P3=2*erfn(delta/sig1)
% erf((5*2^(1/2)*delta)/9)
delta1=solve(P3==0.95)
% (9*2^(1/2)*erfinv(19/20))/10
vpa(delta1)
% 1.764