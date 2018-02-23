syms t x y z;
r=[exp(t)*(cos(t)+sin(t)),exp(t)*(sin(t)-cos(t)),exp(t)]
t0=0

dr=simplify(diff(r,t))

rM=subs(r,t,t0)
drM=subs(dr,t,t0)

e1=(x-rM(1))/drM(1)
e2=(y-rM(2))/drM(2)
e3=(z-rM(3))/drM(3)

en=simplify(drM(1)*(x-rM(1))+drM(2)*(y-rM(2))+drM(3)*(z-rM(3)))

ezplot3(r(1),r(2),r(3))
hold on
ezmesh(en)