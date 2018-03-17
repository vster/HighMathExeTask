syms x a;
y1=tanh(x+a)
y1=expand(y1)
% (tanh(a) + tanh(x))/(tanh(a)*tanh(x) + 1)

y2=tanh(x-a)
y2=expand(y2)
% tanh(a)/(tanh(a)*tanh(x) - 1) - tanh(x)/(tanh(a)*tanh(x) - 1)

y3=tanh(2*x)
y3=expand(y3)
% (2*tanh(x))/(tanh(x)^2 + 1)