syms x y z lam;
f1=x+2*y+3*z-5
f2=3*x-y-5*z+1
M=[0,2,1]
R=[x,y,z]

f3=f1+lam*f2
f3M=subs(f3,R,M)
slam=solve(f3M)
f3=subs(f3,lam,slam)
f3=f3*3
