% Show that
% cos(x)^5=1/16*cos(5*x)+5/16*cos(3*x)+ 5/8*cos(x)

% Euler's formulas
% cos(z)=(exp(z*i)+exp(-z*i))/2
% sin(z)=(exp(z*i)-exp(-z*i))/2i

syms x;
z=cos(x)
z=(exp(x*i)+exp(-x*i))/2

z1=z^5
z1=expand(z1)
z1=children(z1)
z1=simplify(z1)
z1=sum(z1)
z1=5/8*cos(x)+5/16*cos(3*x)+1/16*cos(5*x)