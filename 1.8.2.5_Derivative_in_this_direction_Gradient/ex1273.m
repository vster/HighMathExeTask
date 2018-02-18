syms x y z;
u=x/2+y/3+z/6
l=[6 3 -6]

lenl=sqrt(sum(l.*l))
cos_alfa=l(1)/lenl
cos_beta=l(2)/lenl
cos_gamma=l(3)/lenl

gdu=[simplify(diff(u,x));simplify(diff(u,y));simplify(diff(u,z))]
pretty(gdu)

dul=gdu(1)*cos_alfa+gdu(2)*cos_beta+gdu(3)*cos_gamma
vpa(dul)

gdu=gradient(u)
pretty(gdu)
dul2=gdu(1)*cos_alfa+gdu(2)*cos_beta+gdu(3)*cos_gamma