syms t dt a b;
r=[a*cos(t)^2 sqrt(a^2+b^2)*sin(t)*cos(t) b*sin(t)^2]

dr=simplify(diff(r))

ds=sqrt(dr(1)^2+dr(2)^2+dr(3)^2)*dt
ds=simplify(ds)