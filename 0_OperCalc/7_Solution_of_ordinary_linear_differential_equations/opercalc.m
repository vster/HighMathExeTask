function x=opercalc(eq,x0,dx0,d2x0)
syms t p x(t) X
eq2=laplace(eq,t,p);
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t),t), t, 0)...
    subs(diff(x(t),t,t), t, 0)],[X x0 dx0 d2x0]);
X=solve(eq3==0,X);
x=ilaplace(X,p,t);
end