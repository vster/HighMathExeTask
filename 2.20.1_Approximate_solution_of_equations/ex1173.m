clear
syms x
f(x)=x^4-3*x+1

fplot(f(x))
grid on
% [0;1],[1;2]

a=0.1;
b=0.7;
err=0.001;
digits(6)
x1=solvechord(f,a,b,err)
% 0.337719
x2=solvetan(f,a,b,err)
% 0.337667
x3=solvechordtan(f,a,b,err)
% 0.33775

for k=1:4
    ksi1(k)=solvecheb(f,0.3,k);
end
ksi1
% [ 0.337379, 0.337642, 0.337666, 0.337667]

a=1;
b=2;
err=0.001;
digits(6)
x1=solvechord(f,a,b,err)
% 1.30635
x2=solvetan(f,a,b,err)
% 1.30749
x3=solvechordtan(f,a,b,err)
% 1.30749

for k=1:4
    ksi2(k)=solvecheb(f,1.3,k);
end
ksi2
% [ 1.30758, 1.30749, 1.30749, 1.30749]