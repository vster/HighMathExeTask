syms x;
y=4-x^2
M=[1 3]

dy=diff(y,x)
tan_w=(x*dy-y)/(x+y*dy)
tan_w=simplify(tan_w)
pretty(tan_w)

tan_w_M=subs(tan_w,x,M(1))
w=atan(tan_w_M)