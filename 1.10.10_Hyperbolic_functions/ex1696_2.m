syms x;
y1=sinh(x)^2

y2=cosh(2*x)
y2=expand(y2)
% cosh(x)^2-sinh(x)^2=1
% cosh(x)^2=1+sinh(x)^2
y2=subs(y2,'cosh(x)^2','1+sinh(x)^2')
% cosh(2*x)=1+sinh(x)^2

% sinh(x)^2=(cosh(2*x)-1)/2