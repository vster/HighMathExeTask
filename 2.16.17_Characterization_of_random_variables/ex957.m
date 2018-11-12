I=[0 2 4 6 8]
nx=[3 4 10 5 3]

X=[1 3 5 7 9]
n=sum(nx)
% 25
W=nx/n
% 0.1200    0.1600    0.4000    0.2000    0.1200
alfa1=sum(W.*X)
% 5.0800
alfa2=sum(W.*X.^2)
% 31.0800
alfa3=sum(W.*X.^3)
% 210.5200
alfa4=sum(W.*X.^4)
% 1.5306e+03

MX=alfa1
% 5.0800
mu1=0
% 0
mu2x=alfa2-alfa1^2
% 5.2736
DX=mu2x
% 5.2736
mu3x=alfa3-3*alfa1*alfa2+2*alfa1^3
% -0.9462
mu4x=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 67.3002

sigx=sqrt(DX)
% 2.2964
Skx=mu3x/sigx^3
% -0.0781
Exx=mu4x/sigx^4-3
% -0.5801
