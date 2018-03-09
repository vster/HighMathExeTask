syms x y z;
a=[1,1,1]
b=[1,1,-1]
A1=[0,2,1]

syms D;
N=cross(a,b)
f=-2*x+2*y+D
f1=subs(f,[x y z],A1)
f=x-y+2
% x-y+2=0