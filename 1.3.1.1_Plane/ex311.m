syms x y z lam;
f1=(1+2^(1/2))*x+2*y+2*z-4
f2=x+y+z+1

f3=f1+lam*f2
f3=expand(f3)

syms A1 B1 C1 A2 B2 C2;
A1=(1+sqrt(2)+lam)
B1=2+lam
C1=2+lam
A2=0
B2=0
C2=1

cos_phi=(A1*A2+B1*B2+C1*C2)/(sqrt(A1^2+B1^2+C1^2)*sqrt(A2^2+B2^2+C2^2))
slam=solve(cos_phi==1/2,lam)
f3=subs(f3,lam,slam)
