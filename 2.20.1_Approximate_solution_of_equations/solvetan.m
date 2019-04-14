function c=solvetan(f,a,b,err)
syms x;
df(x)=diff(f);
d2f(x)=diff(f,x,2);
d=a;
if f(b)*d2f(b)>0
    d=b;
elseif f(a)*d2f(a)>0
    d=a;
end

for j=1:10
    c=vpa(d-f(d)/df(d));
    if (abs(d-c)<err)
        break;
    end
    d=c;
end
end