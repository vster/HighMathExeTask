Y=[4 9 14 19]
W=[0.4 0.2 0.3 0.1]
% Y=5*X-1
k=5
b=-1
X=[1 2 3 4]

alfa1=sum(W.*X)
% 2.1000
alfa2=sum(W.*X.^2)
% 5.5000
alfa3=sum(W.*X.^3)
% 16.5000
alfa4=sum(W.*X.^4)
% 53.5000

mu1x=0
% 0
mu2x=alfa2-alfa1^2
% 1.0900
mu3x=alfa3-3*alfa1*alfa2+2*alfa1^3
% 0.3720
mu4x=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 2.0857

mu1y=0
% 0
mu2y=k^2*mu2x
% 27.2500
mu3y=k^3*mu3x
% 46.5000
mu4y=k^4*mu4x
% 1.3036e+03