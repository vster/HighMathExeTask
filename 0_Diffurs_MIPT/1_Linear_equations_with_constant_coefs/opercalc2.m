function y=opercalc2(eq,ady0)
syms x p y(x) Y
len=length(ady0);

eq2=laplace(eq,x,p);

eq3=subs(eq2,laplace(y(x),x,p),Y);
for j=1:len
    eq3=subs(eq3,subs(diff(y(x),x,j-1),x,0),ady0(j));
end

Y=solve(eq3==0,Y);
y=ilaplace(Y,p,x);
end