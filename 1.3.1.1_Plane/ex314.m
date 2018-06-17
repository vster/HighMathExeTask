% Write the equation of the plane passing through the point 
% A1=[0,2,1] and parallel to the vectors a=i+j+k and b=i+j-k

syms x y z;
a=[1,1,1]
b=[1,1,-1]
A1=[0,2,1]

syms D;
N=cross(a,b)
% [-2 2 0]

f=-2*x+2*y+D
f1=subs(f,[x y z],A1)
% D=-4    

f2=subs(f,D,-4)
f2=-f2/2
% x - y + 2 = 0