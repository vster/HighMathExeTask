function c=solvechord(f,a,b,err)
for j=1:20
    c=vpa(a-(b-a)*f(a)/(f(b)-f(a)));
    if (abs(c-a)<err)
        break;
    end
    a=c;
end
end