% Using Euler's formula, prove that
% cos(x)^3=1/4*cos(3*x)+3/4*cos(x)

% Euler's formulas
% cos(z)=(exp(z*i)+exp(-z*i))/2
% sin(z)=(exp(z*i)-exp(-z*i))/2i

syms x;
z=cos(x)
z=(exp(x*i)+exp(-x*i))/2

z1=z^3
z1=expand(z1)
% (exp(-x*1i)*exp(-x*2i))/8 + (3*exp(-x*1i)*exp(x*2i))/8 + (3*exp(x*1i)*exp(-x*2i))/8 + (exp(x*1i)*exp(x*2i))/8
z1=children(z1)
% [ (exp(-x*1i)*exp(-x*2i))/8, (3*exp(-x*1i)*exp(x*2i))/8, (3*exp(x*1i)*exp(-x*2i))/8, (exp(x*1i)*exp(x*2i))/8]
z1=simplify(z1)
% [ exp(-x*3i)/8, (3*exp(x*1i))/8, (3*exp(-x*1i))/8, exp(x*3i)/8]
z1=sum(z1)
% (3*exp(-x*1i))/8 + (3*exp(x*1i))/8 + exp(-x*3i)/8 + exp(x*3i)/8
z1=3/4*cos(x)+1/4*cos(3*x)