X=[11 12 13 14]
W=[0.35 0.25 0.15 0.25]
a=10

X1=X-a
% 1     2     3     4
nu1=sum(W.*X1)
% 2.3000
nu2=sum(W.*X1.^2)
% 6.7000
nu3=sum(W.*X1.^3)
% 22.4000
nu4=sum(W.*X1.^4)
% 80.5000

mu1=0

mu2=nu2-nu1^2
% 1.4100
mu3=nu3-3*nu1*nu2+2*nu1^3
% 0.5040
mu4=nu4-4*nu1*nu3+6*nu1^2*nu2-3*nu1^4
% 3.1257
