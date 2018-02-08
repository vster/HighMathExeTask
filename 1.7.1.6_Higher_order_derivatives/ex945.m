syms x
y=x^5+2*x^4-3*x^3-x^2-0,5*x+7
for n=1:6
    Dy=diff(y,n)
end