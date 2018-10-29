% box: 6 W + 8 B = 14

% P(A)
PA=sym(6/14,'r')
% 3/7
% P(B/A)
PBA=sym((6-1)/(6+8-1),'r')
% 5/13
% P(AB)=P(A)*P(B/A)
PAB=PA*PBA
% 15/91