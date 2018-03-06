syms x y z;
A=[2,-1,4]
B=[3,2,-1]
f=x+y+2*z-3;

AB=B-A
n=[1,1,2]

N=cross(AB,n)

eq=N(1)*(x-A(1))+N(2)*(y-A(2))+N(3)*(z-A(3))

% 11*x - 7*y - 2*z - 21 = 0