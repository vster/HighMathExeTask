syms g ro r c x;
dP=2*ro*g*(c+r+x)*sqrt(r^2-x^2)
P=int(dP,x,-r,r)
% pi*g*r^2*ro*(c + r)
d=0.06  % �
g=9.8   % �/�^2
ro=1000 % ��/�^3
r=d/2   % �
c=1     % �

P=pi*g*r^2*ro*(c + r)
% 28.5401 (?)

