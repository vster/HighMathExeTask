% Prove
% div(a x b) = b*rot(a)-a*rot(b)

syms x y z a1 a2 a3 b1 b2 b3;
r=[x y z]
a=[a1 a2 a3]
b=[b1 b2 b3]

P1=divergence(cross(a,b),r)
% 0
P2=b*curl(a,r)-a*curl(b,r)
% 0