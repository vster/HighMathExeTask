syms x y z;
M=[3,-1,-5]
f1=3*x-2*y+2*z+7
f2=5*x-4*y+3*z+1

n1=[3,-2,2]
n2=[5,-4,3]

N=cross(n1,n2)

eq=N(1)*(x-M(1))+N(2)*(y-M(2))+N(3)*(z-M(3))

% 2*x + y - 2*z - 15 = 0
