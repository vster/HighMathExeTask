% Is it possible to series
% u(x,n)=n*(x^2+1)^n
% apply the theorem on the differentiation 
% of functional series?

syms x n;
u(x,n)=n*(x^2+1)^n

% the series diverges

syms i;
x1=-2:0.2:2;
s=zeros(1,length(x1));
for i=1:10
    s=s+u(x1,i);
    plot(x1,s)
    grid on
end
hold off

syms i;
x1=-2:0.2:2;
for i=1:6
    y1=u(x1,i);
    plot(x1,y1)
    hold on
    grid on
end
hold off