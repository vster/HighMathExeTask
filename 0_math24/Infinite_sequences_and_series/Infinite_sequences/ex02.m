% Write the formula for n-thr member and the numerical sequence 
% and determine its limit
% 1,-2/2,3/4,-4/8,5/16,...

syms n;
a(n)=((-1)^(n-1)*n)/2^(n-1)
digits(4)

syms i;
for i=1:10
     a1(i)=a(i);   
     a2(i)=vpa(abs(a(i)));
end
a1
% [ 1, -1, 3/4, -1/2, 5/16, -3/16, 7/64, -1/16, 9/256, -5/256]
a2
% [ 1.0, 1.0, 0.75, 0.5, 0.3125, 0.1875, 0.1094, 0.0625, 0.03516, 0.01953]

% -n<=(-1)^(n-1)*n<=n => -n/2^(n-1)<=((-1)^(n-1)*n)/2^(n-1)<=n/2^(n-1)

L=limit(a(n),n,inf)
% 0