% 1 box: 5 w, 10 b
% 2 box: 3 w, 7 b
clear
PAH=sym([5/15 3/10],'r')
PH=sym([15/16 1/16],'r')
PA=sum(PH.*PAH)
% 53/160