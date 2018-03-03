syms x y;
F=(x-7)^2+(y-5)^2-2
M=[6 6]

ezplot(F,[5 10 2 10])
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