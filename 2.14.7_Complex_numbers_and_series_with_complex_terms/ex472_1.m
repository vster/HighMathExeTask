syms n;
w(n)=(1+i)^(n-1)

for k=1:6
    w1(k)=w(k);
end
disp(w1)
% [ 1, 1 + 1i, 2i, - 2 + 2i, -4, - 4 - 4i]

% w(n) = (sqrt(2)*(cos(pi/4)+1i*sin(pi/4)))^(n-1)
w(n) = (2^((n-1)/2))*(cos(pi*(n-1)/4)+1i*sin(pi*(n-1)/4))
for k=1:6
    w2(k)=w(k);
end
disp(w2)