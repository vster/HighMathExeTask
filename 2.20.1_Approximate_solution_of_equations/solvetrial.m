function c=solvetrial(f,a,b,err)
for j=1:30
    c=vpa((a+b)/2);
    fc=vpa(f(c));
    if abs(c-a)<err
        break
    end
    if fc<0
        a=c;
    else
        b=c;
    end    
end
end