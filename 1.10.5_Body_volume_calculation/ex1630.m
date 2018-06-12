syms x;
y1=sqrt(x)*exp(x)

ezplot(y1,[0,2])
grid on

V=pi*int(y1^2,0,1)
% pi*(exp(2)/4 + 1/4)