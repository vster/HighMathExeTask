Y=[3 7 11 15 19 23]
W=[0.02 0.18 0.35 0.3 0.1 0.05]

X=[1 2 3 4 5 6]
Y=4*X-1
% 3     7    11    15    19    23
X2=X.^2
% 1     4     9    16    25    36

xm=sum(X.*W)
% 3.4300
x2m=sum(X2.*W)
% 12.9900

ym=4*xm-1
% 12.7200
DY=4^2*(x2m-xm^2)
% 11.7649

