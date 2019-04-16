function y=opercalc2(eq,ady0)
syms t p y(t) Y
len=length(ady0);

eq2=laplace(eq,t,p);

eq3=subs(eq2,laplace(y(t),t,p),Y);
for j=1:len
    eq3=subs(eq3,subs(diff(y(t),t,j-1),t,0),ady0(j));
end

Y=solve(eq3==0,Y);
y=ilaplace(Y,p,t);
end