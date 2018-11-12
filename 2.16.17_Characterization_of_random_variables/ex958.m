I=[1 3 5 7 9]
nx=[2 4 10 6 3]

X=[2 4 6 8 10]
n=sum(nx)
% 25
W=nx/n
% 0.0800    0.1600    0.4000    0.2400    0.1200
alfa1=sum(W.*X)
% 6.3200
alfa2=sum(W.*X.^2)
% 44.6400
alfa3=sum(W.*X.^3)
% 340.1600
alfa4=sum(W.*X.^4)
% 2.7437e+03

MX=alfa1
% 6.3200
mu1=0
% 0
mu2x=alfa2-alfa1^2
% 4.6976
DX=mu2x
% 4.6976
mu3x=alfa3-3*alfa1*alfa2+2*alfa1^3
% -1.3425
mu4x=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 56.4217

sigx=sqrt(DX)
% 2.1674
Skx=mu3x/sigx^3
% -0.1319
Exx=mu4x/sigx^4-3
% -0.4432