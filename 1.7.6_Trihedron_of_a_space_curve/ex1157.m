syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

dr=simplify(diff(r,t))
d2r=simplify(diff(r,t,2))
d3r=simplify(diff(r,t,3))
Bn=a*R

sigma=simplify(dot(dr,cross(d2r,d3r))/Bn^2)