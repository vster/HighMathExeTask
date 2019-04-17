% Iteration method
% x^3-2*x^2-4*x-7=0
% err=0.001
% x^3-2*x^2-7=4*x

clear
syms x
fplot(x^3-2*x^2-7)
hold on
fplot(4*x)
grid on
hold off
% [3;4]
phi(x)=(x^3-2*x^2-7)/4
dphi(x)=diff(phi,x)
% (3*x^2)/4 - x
digits(6)

x1=0
vpa(dphi(x1)) 
err=0.001
for j=1:10
    x2=vpa(phi(x1))
    if (abs(x2-x1)<err)
        break;
    end
    x1=x2
end
% ???