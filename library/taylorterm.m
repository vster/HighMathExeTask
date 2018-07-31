function term=taylorterm(f,x0,N)
syms x;
f0=subs(f,x,x0);
i=0;
if (f0~=0)
    i=i+1;
    term(i)=f0;
end
for n=1:N-1
    df(n)=diff(f,x,n);
    df0(n)=subs(df(n),x,x0);
    if (df0(n)~=0)
        i=i+1;
        term(i)=df0(n)/factorial(n)*(x-x0)^n;       
    end
end
end