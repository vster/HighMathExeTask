syms x y z;
u=x*y^2*z^3
M=[3 2 1];
N=[5 4 2];
digits(5)

MN=N-M
cos_alfa=MN(1)/length(MN)
cos_beta=MN(2)/length(MN)
cos_gamma=MN(3)/length(MN)

dux=diff(u,x)
duy=diff(u,y)
duz=diff(u,z)

duxM=subs(dux,[x y z],M)
duyM=subs(duy,[x y z],M)
duzM=subs(duz,[x y z],M)

dul=duxM*cos_alfa+duyM*cos_beta+duzM*cos_gamma
vpa(dul)

gdu=gradient(u)
gduM=subs(gdu,[x y z],M)
dul2=gduM(1)*cos_alfa+gduM(2)*cos_beta+gduM(3)*cos_gamma