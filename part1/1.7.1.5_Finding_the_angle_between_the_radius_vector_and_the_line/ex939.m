syms x y;
F=y^2-8*x
M=[2 4]

dyx=-diff(F,x)/diff(F,y)

tan_w=(x*dyx-y)/(x+y*dyx)
tan_w=simplify(tan_w)
pretty(tan_w)

tan_w_M=subs(tan_w,[x y],M)
vpa(tan_w_M)
w=atan(tan_w_M)
vpa(w)