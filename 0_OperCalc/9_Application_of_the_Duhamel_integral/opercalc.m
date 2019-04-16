function x=opercalc(eq,adx0)
syms t p x(t) X
len=length(adx0);

eq2=laplace(eq,t,p);

eq3=subs(eq2,laplace(x(t),t,p),X);
for j=1:len
    eq3=subs(eq3,subs(diff(x(t),t,j-1),t,0),adx0(j));
end

X=solve(eq3==0,X);
x=ilaplace(X,p,t);
end