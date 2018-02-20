syms t;
r=[cos(t);sin(t);1]

ezplot3(r(1),r(2),r(3))

dr=diff(r)

pr=dot(r,dr)