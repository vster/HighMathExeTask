% diff(y,x,4)-diff(y,x,2)+y=2*sin(x)
% L(D)y=2*sin(x)
% (D^4-D^2+1)y=2*sin(x)
clear
syms x A k
y=A*sin(k*x)
D2y=OperD2(y)
% -A*k^2*sin(k*x) = -k^2*y
% L(D2)y=L(D2)(A*sin(k*x)=L(-k^2)A*sin(k*x)=L(-k^2)y
% y1=A*sin(k*x)/L(-k^2)
% L(D2)=(D^2)^2-D^2+1
y1=A*sin(k*x)/OperL(-k^2)
% (A*sin(k*x))/(k^4 + k^2 + 1)
y1=subs(y1,[A k],[2 1])
% (2*sin(x))/3

function D2=OperD2(y)
syms x
D2=diff(y,x,2)
end

function L=OperL(y)
L=y^2-y+1
end