% 5. Trial method

clear
syms x
f(x)=x^3+2*x-7
err=0.01
digits(6)

fplot(f)
grid on
a=1
b=2
f(a) % =-4<0
f(b) % =5>0

for j=1:10
    c=vpa((a+b)/2)
    fc=vpa(f(c))
    if abs(c-a)<err
        break
    end
    if fc<0
        a=c
    else
        b=c
    end    
end