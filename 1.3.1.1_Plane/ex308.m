syms x y z;
eq1=2*x+2*y+z-7
eq2=2*x-y+3*z-3
eq3=4*x+5*y-2*z-12

M=[0,3,0]
N=[1,1,1]

slv=solve(eq1==0,eq2==0,eq3==0)
S=[slv.x,slv.y,slv.z]

R=[x,y,z]
F=[R-M;N-M;S-M]
pl=det(F)