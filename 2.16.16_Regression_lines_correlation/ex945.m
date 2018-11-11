x=[0 1 2 3 4 5 6 7]
X=[x;x;x;x;x;x;x;x;x;x].'

y=[0 2 7 12 17 22 27 32 37 42]
Y=[y;y;y;y;y;y;y;y]

K=[3  6   0  0  0  0 0 0 0 0;...
   25 108 44 8  2  0 0 0 0 0;...
   3  50  60 21 5  5 0 0 0 0;...
   1  11  33 32 13 2 3 1 0 0;...
   0  5   5  13 13 7 2 0 0 0;...
   0  0   1  2  12 6 3 2 1 0;...
   0  1   0  1  0  0 2 1 0 1;...
   0  0   1  1  0  0 0 1 0 0]

n=sum(sum(K))
% 517
xm=sum(sum(X.*K))/n
% 2.1954
ym=sum(sum(Y.*K))/n
% 7.7756
x2m=sum(sum(X.^2.*K))/n
% 6.5474
y2m=sum(sum(Y.^2.*K))/n
% 110.7157
xym=sum(sum(X.*Y.*K))/n
% 23.4178

sigx2=x2m-xm^2
% 1.7278
sigx=sqrt(sigx2)
% 1.3145
sigy2=y2m-ym^2
% 50.2553
sigy=sqrt(sigy2)
% 7.0891
Cxy=xym-xm*ym
% 6.3475
% correlation coefficient
rxy=Cxy/(sigx*sigy)
% 0.6812
rr=abs(rxy)*sqrt(n-1)
%  15.4736 > 3 => connection between X and Y is likely enough

syms x
digits(5)
yxm=ym+rxy*sigy/sigx*(x-xm)
yxm=vpa(yxm)
% 3.6738*x - 0.2896
syms y
xym=xm+rxy*sigx/sigy*(y-ym)
xym=vpa(xym)
% 0.12631*y + 1.2133

fplot(yxm,[0 7])
hold on
y1=(x-1.2133)/0.12631
fplot(y1,[0 7])
hold off
grid