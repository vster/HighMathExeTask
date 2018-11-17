ex965
W=W
P=P
WP=W-P
WP2=(W-P).^2
WP2P=(W-P).^2./P
ss=sum((W-P).^2./P)
% 0.0573
hi2=ss*n
% 5.7332

l=10
t=5
r=l-t
% r=5
% If hi2=5 then 
P1=0.4159
% If hi2=6 then 
P2=0.3062
P=P1-0.7*(P1-P2)
% 0.3391 > 0.1
% According to the Pearson criterion, the hypothesis about the 
% coincidence of the distribution with the theoretically plausible

kr=abs(hi2-r)/(sqrt(2)*r)
% According to the criterion of the Romanovsky hypothesis 
% of the coincidence of the distribution with the theoretical plausible
% 0.1037 < 3