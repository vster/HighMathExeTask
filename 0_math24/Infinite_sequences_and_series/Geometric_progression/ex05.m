% Show what
% 1+1/x+1/x^2+...=x/(x-1)
% under the condition x>1.

% If x>1 then 1/x<1

% S=sum(n=0:inf)q^n=1/(1-q)

syms x n;
q=1/x
a(n)=q^(n-1)
assume(x>1)

syms i;
for i=1:8
    a2(i)=a(i);
end
a2
% [ 1, 1/x, 1/x^2, 1/x^3, 1/x^4, 1/x^5, 1/x^6, 1/x^7]

S1=1/(1-q)
S1=simplify(S1)
% x/(x - 1)

syms n;
S2=symsum(a(n),n,1,inf)
S2=simplify(S2)
% x/(x - 1)