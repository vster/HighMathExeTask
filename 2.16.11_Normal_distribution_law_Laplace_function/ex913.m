m=1.6
sig=1
a=1
b=2

P1=erfn((b-m)/sig)-erfn((a-m)/sig)
% 0.3812
P2=1-P1
% 0.6188
P3=P2^4
% 0.1467
P4=1-P3
% 0.8533