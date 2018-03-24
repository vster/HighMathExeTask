syms g ro r c x;
dP=2*ro*g*(c+r+x)*sqrt(r^2-x^2)
P=int(dP,x,-r,r)
% pi*g*r^2*ro*(c + r)
d=0.06  % Ï
g=9.8   % Ï/Ò^2
ro=1000 % Í„/Ï^3
r=d/2   % Ï
c=1     % Ï

P=pi*g*r^2*ro*(c + r)
% 28.5401 (?)

