syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

tau=[ -(a*sin(t))/R, (a*cos(t))/R, (R^2 - a^2)^(1/2)/R]
beta=[ (sin(t)*(R^2 - a^2)^(1/2))/R, -(cos(t)*(R^2 - a^2)^(1/2))/R, a/R]
nu=simplify(cross(beta,tau))