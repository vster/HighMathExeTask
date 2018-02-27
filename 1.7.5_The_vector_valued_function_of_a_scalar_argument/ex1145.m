syms t dt;
r=[4*cos(t) 4*sin(t) 3*t]

dr=diff(r)

ds=sqrt(dr(1)^2+dr(2)^2+dr(3)^2)*dt
ds=simplify(ds)