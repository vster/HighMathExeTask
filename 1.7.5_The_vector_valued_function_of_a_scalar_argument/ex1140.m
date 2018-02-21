syms t x y z;
r=[cos(t);sin(t);2*sqrt(2)*t]
t0=pi/4

ezplot3(r(1),r(2),r(3))

dr=simplify(diff(r,t))

rM=subs(r,t,t0)
drM=subs(dr,t,t0)

e1=(x-rM(1))/drM(1)
e2=(y-rM(2))/drM(2)
e3=(z-rM(3))/drM(3)