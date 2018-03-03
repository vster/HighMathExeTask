syms x y;
F=x^2/100+y^2/36-1
M=[6 4.8]

ezplot(F, [-10 10 -10 10])
hold on
plot(M(1),M(2),'ro')
hold off

dyx=-diff(F,x)/diff(F,y)

tan_w=(x*dyx-y)/(x+y*dyx)
tan_w=simplify(tan_w)
pretty(tan_w)

tan_w_M=subs(tan_w,[x y],M)
vpa(tan_w_M)
w=atan(tan_w_M)
vpa(w)