syms x y a b;
% f=x^2/a^2+y^2/b^2-1

y=b*sqrt(1-x^2/a^2)

y1=3*sqrt(1-x^2/3^2)

ezplot(y1)

dy=diff(y,x)

%y1=1+dy^2
%y1=factor(y1)
%y1=simplify(y1)
%y2=simplify(y*sqrt(y1))

y2=simplify(y*sqrt(1+dy^2))
pretty(y2)

y2=sqrt(b^2*x^2-a^2*(x^2-a^2))/a

S=simplify(2*pi*int(y2,x,-a,a))

pretty(S)

% не получается