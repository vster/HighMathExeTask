syms x y z;
p11=x-2*y-5
pl2=x-3*z+8

s1=[1 -2 0]
s2=[1 0 -3]

s=cross(s1,s2)
% 6     3     2
l=norm(s)

cos_alfa=6/7
cos_beta=3/7
cos_gamma=2/7
