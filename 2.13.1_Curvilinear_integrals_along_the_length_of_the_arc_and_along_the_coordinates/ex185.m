% Найти коорд ЦТ для окружности
% x^2+y^2=R^2 (0<=x<=R, 0<=y<=R)

syms x R;
% Четверть дуги окружности
s=pi*R/2
% xm=ym
% xm=1/s * int (K) x ds
y=sqrt(R^2-x^2)
dy=diff(y)
% -x/(R^2 - x^2)^(1/2)
df=x*sqrt(1+dy^2)
df=simplify(df)
% x*(R^2/(R^2 - x^2))^(1/2)
df=x*R/sqrt(R^2-x^2)
xm=1/s*int(df,x,0,R)
% (2*R)/pi