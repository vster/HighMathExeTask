m1=10
delta1=0.2

syms sig
P=2*erfn(delta1/sig)

sig1=solve(P==0.8,sig)
vpa(sig1)
% 0.156