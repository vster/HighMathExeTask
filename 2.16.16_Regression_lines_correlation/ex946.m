clear
x=[7.0 7.5 8.0 8.5 9.0 9.5 10.0 10.5 11.0...
    11.5 12.0 12.5 13.0 13.5 14.0 14.5 15.0 15.5 16.0]
X=[x;x;x;x;x].'

y=[0 5 10 15 20]
Y=[y;y;y;y;y;y;y;y;y;y;y;y;y;y;y;y;y;y;y]

K=[ 2 0 0 0 0;...
    1 1 0 1 1;...
    0 1 0 0 1;...
    2 0 0 0 0;...
    2 0 1 1 3;...
    0 0 0 2 0;...
    3 2 4 3 3;...
    4 5 1 3 1;...
    3 0 3 2 6;...
    3 5 1 0 9;...
    5 3 6 4 4;...
    1 1 3 10 6;...
    1 0 1 4 5;...
    1 1 0 1 6;...
    2 0 1 0 3;...
    0 0 2 0 1;...
    0 0 0 0 0;...
    0 1 1 0 0;...
    0 0 0 0 3]

n=sum(sum(K))
% 157
xm=sum(sum(X.*K))/n
% 11.5573
ym=sum(sum(Y.*K))/n
% 11.7516
x2m=sum(sum((X.^2).*K))/n
% 136.7182
y2m=sum(sum((Y.^2).*K))/n
% 195.3822
xym=sum(sum((X.*Y).*K))/n
% 139.1561

sigx2=x2m-xm^2
% 3.1464
sigx=sqrt(sigx2)
% 1.7738
sigy2=y2m-ym^2
% 57.2822
sigy=sqrt(sigy2)
% 7.5685
Cxy=xym-xm*ym
% 3.3391
% correlation coefficient
rxy=Cxy/(sigx*sigy)
% 0.2487
rr=abs(rxy)*sqrt(n-1)
% 3.1065  > 3 => connection between X and Y is likely enough

syms x
digits(5)
yxm=ym+rxy*sigy/sigx*(x-xm)
yxm=vpa(yxm)
% 1.0612*x - 0.5135
syms y
xym=xm+rxy*sigx/sigy*(y-ym)
xym=vpa(xym)
% 0.058292*y + 10.872    

fplot(yxm,[7 16])
hold on
y1=(x-10.872)/0.058292
fplot(y1,[7 16])
hold off
grid