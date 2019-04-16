function [x1,y1]=opercalcsys(eq11,eq12,x0,y0)
syms t p
syms x(t) y(t) X Y

eq21=laplace(eq11,t,p);
eq22=laplace(eq12,t,p);

eq31=subs(eq21,[laplace(x(t),t,p) laplace(y(t),t,p) x(0)],[X,Y,x0]);
eq32=subs(eq22,[laplace(x(t),t,p) laplace(y(t),t,p) y(0)],[X,Y,y0]);

[X Y]=solve([eq31 eq32],[X Y]);

x1=ilaplace(X,p,t);
y1=ilaplace(Y,p,t);
end