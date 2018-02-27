rA=[1 1 1]
rB=[1 3 5]
rC=[7 9 11]

plot3(rA(1),rA(2),rA(3),'ro')
hold on
plot3(rB(1),rB(2),rB(3),'bo')
plot3(rC(1),rC(2),rC(3),'go')

BA=rB-rA
BC=rB-rC
BD=BA+BC
rD=rB-BD

plot3(rD(1),rD(2),rD(3),'mo')
hold off