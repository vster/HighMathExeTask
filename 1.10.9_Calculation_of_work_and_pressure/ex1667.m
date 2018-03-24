syms a b c h x dx ro;

l=(b-a)*(x-c)/(2*h)
dS=(a+2*l)*dx

dP=ro*g*x*dS
P=int(g*ro*x*(a + ((a - b)*(c - x))/h),x,c,c+h)
% (g*h*ro*(3*a*c + 3*b*c + a*h + 2*b*h))/6