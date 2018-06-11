% Write the first four terms of the series
% sum (n=1:inf) 9/(100^n-1)

clear
syms n;
u(n)=9/(100^n-1)
for n=1:4
    a(n)=u(n)
end
% [ 1/11, 1/1111, 1/111111, 1/11111111]