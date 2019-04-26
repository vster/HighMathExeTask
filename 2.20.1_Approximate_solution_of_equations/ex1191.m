clear
syms x f(x) x0
digits(10)

f(x)=5*x^6-5*x-47.071
fplot(f)
grid
x0=1.5

for k=1:4
    ksi(k)=solvecheb(f,x0,k);
end
ksi
% [ 1.489308836, 1.489110445, 1.489108651, 1.489108643]