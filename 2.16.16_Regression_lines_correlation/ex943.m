clear
n=17
i=1:n
X=[0.25 0.37 0.44 0.55 0.60 0.62 0.68 0.70 0.73...
    0.75 0.82 0.84 0.87 0.88 0.90 0.95 1.00]
Y=[2.57 2.31 2.12 1.92 1.75 1.71 1.60 1.51 1.50...
    1.41 1.33 1.31 1.25 1.20 1.19 1.15 1.00]

SX=sum(X)
% 11.9500
SY=sum(Y)
% 26.8300
SX2=sum(X.^2)
% 9.1095
SY2=sum(Y.^2)
% 45.4127
SXY=sum(X.*Y)
% 17.3917
xm=SX/n
% 0.7029
ym=SY/n
% 1.5782
DX=SX2/n-xm^2
% 0.0417
sigx=sqrt(DX)
% 0.2043
DY=SY2/n-ym^2
% 0.1805
sigy=sqrt(DY)
% 0.4249
CXY=SXY/n-xm*ym
% -0.0864
rxy=CXY/(sigx*sigy)
% -0.9951
rr=abs(rxy)*sqrt(n-1)
% 3.9806 > 3

% create a regression equation
% yxm-ym=rxy*sigy/sigx*(x-xm)
syms x
digits(5)
yxm=ym+rxy*sigy/sigx*(x-xm)
vpa(yxm)
% 3.0332 - 2.0698*x

% xym-xm=rxy*sigx/sigy*(y-ym)
syms y
xym=xm+rxy*sigx/sigy*(y-ym)
vpa(xym)
% 1.4581 - 0.47846*y