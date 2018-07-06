% Determine if the sequence 
% {sqrt(n+2)-sqrt(n+1)} 
% is convergent or divergent?

syms n;
a(n)=sqrt(n+2)-sqrt(n+1)
L=limit(a(n),n,inf)
% 0
S=symsum(a(n),n,1,inf)
% Inf

syms i;
for i=1:10
     a1(i)=a(i);
     a2(i)=vpa(a(i));
end
a1

a2
% [ 0.3178, 0.2679, 0.2361, 0.2134, 0.1963, 0.1827, 0.1716, 0.1623, 0.1543, 0.1475]