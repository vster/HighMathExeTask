syms x y z;
P=[2,0,-1]
Q=[1,-1,3]
f=3*x+2*y-z+5;

PQ=Q-P
n=[3,2,-1]

N=cross(PQ,n)

eq=N(1)*(x-P(1))+N(2)*(y-P(2))+N(3)*(z-P(3))
eq=-eq