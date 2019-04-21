clear
syms x
f(x)=x^3-10*x+5
err=0.001
digits(6)

fplot(f)
grid on
a=0
b=0.6

x1=solvetrial(-f,a,b,err)
% 0.513867
x2=solvechord(f,a,b,err)
% 0.513545
x3=solvetan(f,a,b,err)
% 0.513544
x4=solvechordtan(f,a,b,err)
% 0.513534

for k=1:4
    ksi1(k)=solvecheb(f,0.5,k);
end
ksi1
% [ 0.513514, 0.513543, 0.513544, 0.513544]