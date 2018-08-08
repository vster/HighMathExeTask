% Express sin(x)^3 through sin(x) and sin(3*x)

% Euler's formulas
% cos(x)=(exp(x*i)+exp(-x*i))/2
% sin(x)=(exp(x*i)-exp(-x*i))/2i

syms x;
z=sin(x)
z=(exp(x*1i)-exp(-x*1i))/2i

z1=z^3
z1=expand(z1)
z1=children(z1)
z1=simplify(z1)
z1=sum(z1)
% (exp(-x*1i)*3i)/8 - (exp(x*1i)*3i)/8 - (exp(-x*3i)*1i)/8 + (exp(x*3i)*1i)/8
z1=3/4*sin(x)-1/4*sin(3*x)

z2=3/4*(exp(x*1i)-exp(-x*1i))/2i-1/4*((exp(3*x*1i)-exp(-3*x*1i))/2i)
% (exp(-x*1i)*3i)/8 - (exp(x*1i)*3i)/8 - (exp(-x*3i)*1i)/8 + (exp(x*3i)*1i)/8