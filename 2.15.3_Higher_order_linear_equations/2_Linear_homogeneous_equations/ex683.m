% The equation y''-y=0 
% is satisfied by two particular solutions 
% y1=sinh(x) and y2=cosh(x).
% Do they form a fundamental system?

clear
syms x
syms y(x)
eqn=diff(y,x,2)-y
yp=[sinh(x),cosh(x)]

for i=1:length(yp)
    chk(i)=subs(eqn,y,yp(i))
end
% [ 0, 0]

% Vronskian
A=[yp(1) yp(2);...
   diff(yp(1)) diff(yp(2))]
W=simplify(det(A))
% -1 /= 0