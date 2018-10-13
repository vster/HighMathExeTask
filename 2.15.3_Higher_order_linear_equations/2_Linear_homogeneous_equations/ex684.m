% Is it possible to make a general solution of the equation 
% y''+1/x*y'+(1-1/(4*x^2))*y=0
% by its two particular solutions
% y1=1/sqrt(x)*sin(x), y2=1/sqrt(x)*cos(x) ?

clear
syms x
syms y(x)
eqn=diff(y,x,2)+1/x*diff(y,x)+(1-1/(4*x^2))*y
yp=[1/sqrt(x)*sin(x),1/sqrt(x)*cos(x)]

for i=1:length(yp)
    chk(i)=simplify(subs(eqn,y,yp(i)))
end
% [ 0, 0]

% Vronskian
A=[yp(1) yp(2);...
   diff(yp(1)) diff(yp(2))]
W=simplify(det(A))
% -1/x /= 0 => yes