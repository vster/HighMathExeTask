syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

beta=[ t^2/(t^2 + 2), -(2*t)/(t^2 + 2), 2/(t^2 + 2)]
tau=[ 2/(t^2 + 2), (2*t)/(t^2 + 2), t^2/(t^2 + 2)]
nu=simplify(cross(beta,tau))

nu1=subs(nu,t,t1)
