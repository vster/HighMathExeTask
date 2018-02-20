syms t;
r=[t+1;t^2-1;t^3]

dr=simplify(diff(r,t))

ezplot3(r(1),r(2),r(3))