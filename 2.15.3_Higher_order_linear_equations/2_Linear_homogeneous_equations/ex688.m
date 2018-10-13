% Determine whether the following functions are linearly independent 
% in the interval of their existence.

clear
syms x a
yp=[log(2*x),log(3*x),log(4*x)]

A=[yp(1) yp(2) yp(3);...
   diff(yp(1)) diff(yp(2)) diff(yp(3));...
   diff(yp(1),x,2) diff(yp(2),x,2) diff(yp(3),x,2)]
W=simplify(det(A))
% 0 => No