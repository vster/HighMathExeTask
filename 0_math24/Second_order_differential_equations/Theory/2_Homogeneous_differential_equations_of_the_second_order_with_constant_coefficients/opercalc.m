function y=opercalc(eq,y0,dy0,d2y0)
syms x p y(x) Y
eq2=laplace(eq,x,p);
eq3=subs(eq2,[laplace(y(x),x,p) y(0) subs(diff(y(x),x), x, 0)...
    subs(diff(y(x),x,x), x, 0)],[Y y0 dy0 d2y0]);
Y=solve(eq3==0,Y);
y=ilaplace(Y,p,x);
end