% 5. Trial method

clear
syms x
f(x)=x^5-x-2
err=0.001
digits(6)

fplot(f)
grid on
a=1
b=1.5
vpa(f(a)) % -2.0
vpa(f(b)) % 4.09375

x1=solvetrial(f,a,b,err)
% 1.2666
x2=solvechord(f,a,b,err)
% 1.26676
x3=solvetan(f,a,b,err)
% 1.26717
x4=solvechordtan(f,a,b,err)
% 1.26717

for k=1:4
    ksi1(k)=solvecheb(f,1.2,k);
end
ksi1
% [ 1.27597, 1.26663, 1.26719, 1.26717]