clear
syms x
f(x)=x^4+3*x-20

fplot(f(x))
grid on
% [-3;-2],[1;2]

a=1;
b=2;
err=0.001;
digits(6)
x1=solvechord(f,a,b,err)
% 1.94
x2=solvetan(f,a,b,err)
% 1.94
x3=solvechordtan(f,a,b,err)
% 1.94

for k=1:4
    ksi1(k)=solvecheb(f,b,k);
end
ksi1
% [ 1.94286, 1.94053, 1.94048, 1.94048]

a=-3;
b=-2;
err=0.001;
digits(4)
x1=solvechord(f,a,b,err)
% -2.277
x2=solvetan(f,a,b,err)
% -2.276
x3=solvechordtan(f,a,b,err)
% -2.276

for k=1:4
    ksi2(k)=solvecheb(f,a,k);
end
ksi2
% [ -2.505, -2.336, -2.288, -2.278]