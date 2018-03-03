syms t;
assume(t,'real')

r1=[3*t;2;5]
r2=[2;-3*t;1]

dp=sum(r1.*diff(r2)+r2.*diff(r1))

% ѕроизводна€ скал€рного произведени€ векторов
dp1=diff(dot(r1,r2))

