clear
% J(y)=int(0:x1)(sqrt(1+yd^2)/sqrt(y))*dx
% y(0)=0
% y(x1)=y1

syms x y xd yd
F=sqrt(1+yd^2)/sqrt(y)

Fyd=diff(F,yd)
% yd/(y^(1/2)*(yd^2 + 1)^(1/2))
Fydyd=simplify(diff(F,yd,2))
% 1/(y^(1/2)*(yd^2 + 1)^(3/2)) >0 for any yd