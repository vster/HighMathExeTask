clear
syms x
f(x)=x^3-9*x^2+18*x-1

fplot(f(x))
grid on
% [0;1], [2;3]

a=0;
b=1;
err=0.0001;
digits(10)
x1=solvechord(f,a,b,err)
% 0.056803
x2=solvetan(f,a,b,err)
% 0.05718
x3=solvechordtan(f,a,b,err)
% 0.057198

for k=1:4
    ksi(k)=solvecheb(f,a,k);
end
ksi
% [ 0.05555555556, 0.05714285714, 0.05717916137, 0.05717992631]

a=2;
b=3;
err=0.0001;
digits(10)
x1=solvechord(f,a,b,err)
% 2.8887
x2=solvetan(f,a,b,err)
% 2.8887
x3=solvechordtan(f,a,b,err)
% 2.8887

for k=1:4
    ksi2(k)=solvecheb(f,b,k);
end
ksi2
% [ 2.888888889, 2.888888889, 2.888736264, 2.888736054]