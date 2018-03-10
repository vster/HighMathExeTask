syms x y z;
s1=2*x+3*y+3*z-9
s2=4*x+2*y+z-8

N1=[2,3,3]
N2=[4,2,1]

s=cross(N1,N2)
%    -3    10    -8
s10=3*y+3*z-9
s20=2*y+z-8
slv=solve(s10,s20)

M=[0,5,-2]

eq1=(x-M(1))/s(1)
eq2=(y-M(2))/s(2)
eq3=(z-M(3))/s(3)


