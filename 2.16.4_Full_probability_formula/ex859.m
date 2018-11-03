% 1 box: 1 w, 1 b
% 2 box: 100 w, 100 b

PAH=sym([1/3 1/2],'r')
PH=sym([3/4 1/4],'r')
P=PAH(2)*PH(2)/sum(PAH.*PH)
% 1/3
