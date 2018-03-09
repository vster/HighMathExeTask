syms x y z lam;
f1=(1+sqrt(sym(2)))*x+2*y+2*z-4
f2=x+y+z+1
R=[x,y,z]

f3=f1+lam*f2
f3=collect(f3,R)

N1=[lam + sqrt(sym(2)) + 1,lam+2,lam+2]
N2=[0 0 1]

cos_phi=dot(N1,N2)/(norm(N1)*norm(N2))
slam=solve(cos_phi==1/2,lam)
f3=subs(f3,lam,slam)
f3=collect(f3,R)
