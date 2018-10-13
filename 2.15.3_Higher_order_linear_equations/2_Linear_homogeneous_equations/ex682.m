% Given the equation y'''-y'=0
% Do the fundamental system of solutions form functions 
% exp(x), exp(-x), cosh(x) ?

clear
syms x
syms y(x)
eqn=diff(y,x,3)-diff(y,x)
yp=[exp(x),exp(-x),cosh(x)]

for i=1:length(yp)
    chk(i)=subs(eqn,y,yp(i))
end
% [ 0, 0, 0]

A=[yp(1) yp(2) yp(3);...
   diff(yp(1)) diff(yp(2)) diff(yp(3));...
   diff(yp(1),x,2) diff(yp(2),x,2) diff(yp(3),x,2)]
W=det(A)
% 0 => these functions are linearly dependent