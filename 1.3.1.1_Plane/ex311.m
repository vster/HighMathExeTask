% Write the equation of the plane passing through 
% the intersection line of the planes 
% (1+sqrt(sym(2)))*x+2*y+2*z-4=0
% x+y+z+1=0
% and make with the coordinate plane x0y 
% the angle of 60 degrees.

syms x y z lam;
f1=(1+sqrt(sym(2)))*x+2*y+2*z-4
f2=x+y+z+1
R=[x,y,z]

f3=f1+lam*f2
% 2*y + 2*z + lam*(x + y + z + 1) + x*(2^(1/2) + 1) - 4
f3=collect(f3,R)
% (lam + 2^(1/2) + 1)*x + (lam + 2)*y + (lam + 2)*z + lam - 4

N1=[lam + sqrt(sym(2)) + 1,lam+2,lam+2]
N2=[0 0 1]

cos_phi=dot(N1,N2)/(norm(N1)*norm(N2))
% (conj(lam) + 2)/(2*abs(lam + 2)^2 + abs(lam + 2^(1/2) + 1)^2)^(1/2)
slam=solve(cos_phi==1/2,lam)
% -1
f3=subs(f3,lam,slam)
% y + z + 2^(1/2)*x - 5
f3=collect(f3,R)
% 2^(1/2)*x + y + z - 5
