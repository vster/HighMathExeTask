clear
syms x y z;
u=asin(z/sqrt(x^2+y^2))
M=[1 1 1];
N=[3 2 3];
digits(5)

MN=N-M
lenMN=sqrt(sum(MN.*MN))
cos_alfa=MN(1)/lenMN
cos_beta=MN(2)/lenMN
cos_gamma=MN(3)/lenMN

gdu=[simplify(diff(u,x));simplify(diff(u,y));simplify(diff(u,z))]
pretty(gdu)
gduM=subs(gdu,[x y z],M)

dul=gduM(1)*cos_alfa+gduM(2)*cos_beta+gduM(3)*cos_gamma
vpa(dul)

gdu=gradient(u)
pretty(gdu)
gduM=subs(gdu,[x y z],M)
dul2=gduM(1)*cos_alfa+gduM(2)*cos_beta+gduM(3)*cos_gamma