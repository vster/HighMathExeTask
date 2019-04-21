clear
syms x
f(x)=x^3-12*x+1

fplot(f(x))
grid on
% [-4;-3], [0;1], [3;4]

a=-4;
b=-3;
err=0.001;
digits(6)
x1=solvechord(f,a,b,err)
% -3.50516
x2=solvetan(f,a,b,err)
% -3.50504
x3=solvechordtan(f,a,b,err)
% -3.50504

for k=1:4
    ksi1(k)=solvecheb(f,a,k);
end
ksi1
% [ -3.58333, -3.51613, -3.5065, -3.50522]

a=0;
b=1;
err=0.0001;
digits(6)
x1=solvechord(f,a,b,err)
% 0.0834545
x2=solvetan(f,a,b,err)
% 0.0833816
x3=solvechordtan(f,a,b,err)
% 0.0833816

for k=1:4
    ksi2(k)=solvecheb(f,a,k);
end
ksi2
% [ 0.0833333, 0.0833333, 0.0833816, 0.0833816]

a=3;
b=4;
err=0.0001;
digits(6)
x1=solvechord(f,a,b,err)
% 3.42144
x2=solvetan(f,a,b,err)
% 3.42166
x3=solvechordtan(f,a,b,err)
% 3.42166

for k=1:4
    ksi3(k)=solvecheb(f,a,k);
end
ksi3
% [ 3.53333, 3.40404, 3.42436, 3.42126]