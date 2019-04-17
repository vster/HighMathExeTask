% Iteration method
% x^3-12*x-5=0
% err=0.001
% x^3-5=12*x

clear
syms x
fplot(x^3-5)
hold on
fplot(12*x)
grid on
hold off
% [-1;0],[-4;-3],[3,4]
phi(x)=(x^3-5)/12
dphi(x)=diff(phi,x)
% x^2/4
digits(6)

x1=0
vpa(dphi(x1)) % = 0.0 <1
err=0.001
for j=1:10
    x2=vpa(phi(x1))
    if (abs(x2-x1)<err)
        break;
    end
    x1=x2
end
% -0.42296

x1=-3.5
vpa(dphi(x1)) % = 3.0625 > 1

x1=3.5
vpa(dphi(x1)) % = 3.0625 > 1