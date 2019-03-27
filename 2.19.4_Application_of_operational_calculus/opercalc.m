function y=opercalc(eq,y0,dy0)
syms t p y(t) Y
eq2=laplace(eq,t,p);
eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t),t))],[Y y0 dy0]);
Y=solve(eq3==0,Y);
y=ilaplace(Y,p,t);
end