% Determine whether the following functions are linearly independent 
% in the interval of their existence.

clear
syms x
syms y(x)
yp=[2*x^2+1,x^2-1,x+2]

A=[yp(1) yp(2) yp(3);...
   diff(yp(1)) diff(yp(2)) diff(yp(3));...
   diff(yp(1),x,2) diff(yp(2),x,2) diff(yp(3),x,2)]
W=det(A)
% -6 /=0 => Yes