clear
digits(5)
n=79
x=[0.5 0.6 0.7 0.8 0.9]
X=[x;x;x;x].'

y=[0.5 0.6 0.7 0.8]
Y=[y;y;y;y;y]

K= [0 2 0 8;...
    0 4 2 9;...
    2 12 3 1;...
    21 14 0 0;...
    1 0 0 0]
     
xm=sum(sum(X.*K))/n
% 0.7025
ym=sum(sum(Y.*K))/n
% 0.6215
x2m=sum(sum(X.^2.*K))/n
% 0.5054
y2m=sum(sum(Y.^2.*K))/n
% 0.3986
xym=sum(sum(X.*Y.*K))/n
% 0.4271

sigx2=x2m-xm^2
% 0.0119
sigx=sqrt(sigx2)
% 0.1091
sigy2=y2m-ym^2
% 0.0123
sigy=sqrt(sigy2)
% 0.1110
Cxy=xym-xm*ym
% -0.0095
rxy=Cxy/(sigx*sigy)
% -0.7888
rr=abs(rxy)*sqrt(n-1)
% 6.9662 > 3 => connection between X and Y is likely enough

syms x
yxm=ym+rxy*(sigy/sigx)*(x-xm)
yxm=vpa(yxm)
% yxm=1.1856 - 0.80288*x
syms y
xym=xm+rxy*(sigx/sigy)*(y-ym)
xym=vpa(xym)
% xym=1.1841 - 0.7749*y

fplot(yxm,[7 16])
hold on
y1=(1.1841-x)/0.7749
fplot(y1,[7 16])
hold off
grid