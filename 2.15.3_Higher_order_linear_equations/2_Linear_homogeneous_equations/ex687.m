% Determine whether the following functions are linearly independent 
% in the interval of their existence.

clear
syms x a
yp=[sqrt(x),sqrt(x+a),sqrt(x+2*a)]

A=[yp(1) yp(2) yp(3);...
   diff(yp(1)) diff(yp(2)) diff(yp(3));...
   diff(yp(1),x,2) diff(yp(2),x,2) diff(yp(3),x,2)]
W=simplify(det(A))
% a^3/(4*x^(3/2)*(a + x)^(3/2)*(2*a + x)^(3/2)) /=0 => Yes