syms a b h alfa x ro g;

dS=a/sin(alfa)*dx

dP=ro*g*x*dS
% (a*dx*g*ro*x)/sin(alfa)
P=int((a*g*ro*x)/sin(alfa),x,h,h+b*sin(alfa))
pretty(P)
% (a*b*g*ro*(2*h + b*sin(alfa)))/2