syms x y z;
s1=2*x-y+3*z-1
s2=5*x+4*y-z-7-7

N1=[2,-1,3]
N2=[5,4,-1]

s=cross(N1,N2)
%    -11    17    13

slv=solve(-y+3*z-1==0,4*y-z-7==0)
M=[0,2,1]

eq1=(x-M(1))/s(1)
eq2=(y-M(2))/s(2)
eq3=(z-M(3))/s(3)