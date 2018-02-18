clear
syms x y z;
u=log(x^2+y^2+z^2)
M=[1 2 1];
r=[2 4 4];
digits(5)

lenr=sqrt(sum(r.*r))
cos_alfa=r(1)/lenr
cos_beta=r(2)/lenr
cos_gamma=r(3)/lenr

gdu=[simplify(diff(u,x));simplify(diff(u,y));simplify(diff(u,z))]
pretty(gdu)
gduM=subs(gdu,[x y z],M)

dul=gduM(1)*cos_alfa+gduM(2)*cos_beta+gduM(3)*cos_gamma
vpa(dul)

gdu=gradient(u)
pretty(gdu)
gduM=subs(gdu,[x y z],M)
dul2=gduM(1)*cos_alfa+gduM(2)*cos_beta+gduM(3)*cos_gamma