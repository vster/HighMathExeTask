syms x y a b x0 y0;
F(x,y)=x^2/a^2+y^2/b^2-1
M=[x0 y0]

DF=-diff(F,x)/diff(F,y)

y=y0+DF*(x-x0)
pretty(y)