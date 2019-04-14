function c=solvechordtan(f,a,b,err)
df=diff(f);
for j=1:10
    x1=vpa(a-f(a)/df(a));
    x2=vpa(a-(b-a)*f(a)/(f(b)-f(a)));
    c=(x1+x2)/2;
    if abs(x2-x1)<err
        break;
    end
    if (x2>x1)
        a=x1;
        b=x2;
    else
        a=x2;
        b=x1;
    end    
end
end