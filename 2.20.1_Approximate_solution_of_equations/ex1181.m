clear
syms x
f(x)=x^4-8*x+1
err=0.001
digits(6)

fplot(f)
grid on
a=0
b=0.5

x1=solvetrial(-f,a,b,err)
% 0.125977
x2=solvechord(f,a,b,err)
% 0.125031
x3=solvetan(f,a,b,err)
% 0.125031
x4=solvechordtan(f,a,b,err)
% 0.125031

for k=1:4
    ksi1(k)=solvecheb(f,0.1,k);
end
ksi1
% [ 0.125025, 0.12503, 0.12503, 0.125031]