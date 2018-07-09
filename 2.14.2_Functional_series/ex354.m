% Is it possible to series
% u(x,n)=1/n^2*sin(x/n)
% apply the theorem on the differentiation 
% of functional series?

syms x n;
u(x,n)=1/n^2*sin(x/n)

% 1/n^2*sin(x/n) < 1/n^2 for any x
% so series is converges 

syms i;
x1=-2*pi:0.2:2*pi;
s=zeros(1,length(x1));
for i=1:10
    s=s+u(x1,i);
    plot(x1,s)
    grid on
end
hold off

syms i;
x1=-2*pi:0.2:2*pi;
for i=1:6
    y1=u(x1,i);
    plot(x1,y1)
    hold on
    grid on
end
hold off
