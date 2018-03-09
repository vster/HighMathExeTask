syms x y z lam real;
f1=(1+2^(1/2))*x+2*y+2*z-4
f2=x+y+z+1

f3=f1+lam*f2
f3=expand(f3)
N1=[1+2^(1/2)+lam,2+lam,2+lam]
N2=[0,0,1]

cos_phi=dot(N1,N2)/(norm(N1)*norm(N2))
slam=solve(cos_phi==1/2)

f3=subs(f3,lam,slam)
f3=simplify(f3)
