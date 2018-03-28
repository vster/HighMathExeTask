% ƒлина участка пути по озеру
% |AC|=2*|AD|=2*R*cos(alfa)
% ƒлина участка пути по берегу
% |CB|=2*alfa*R
% t=t(alfa)=|AC|/u+|CB|/v=2*R*cos(alfa)/u+2*alfa*R/v=2*R*(cos(alfa)/u+alfa/v)
syms R alfa u v;
t=2*R*(cos(alfa)/u+alfa/v)
dt=diff(t,alfa)
% -2*R*(sin(alfa)/u - 1/v)
slv=solve(sin(alfa)/u - 1/v,alfa)
alfa1=slv(1)
% asin(u/v)
d2t=diff(t,alfa,2)
% -(2*R*cos(alfa))/u < 0 - отрицательна -> 
%   значит alfa1 - точка максимума (не подходит)
t0=subs(t,alfa,0)
% (2*R)/u - соответствует движению только по воде на лодке
t1=subs(t,alfa,pi/2)
% (pi*R)/v - соответствует перемещение пешком вдоль полукруга ACB
% ≈сли u/v>2/pi, то перемещение на лодке займет меньше времени, чем движ
% по суше
% ≈сли u/v<2/pi, то более быстрым будет движеие по берегу озера