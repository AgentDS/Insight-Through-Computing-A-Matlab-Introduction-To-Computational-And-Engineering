Q1= MakePoint(1,2);
Q2= MakePoint(8,3);
n= 10;
P= LinespaceP(Q1,Q2,n);
axis equal
hold on
ShowPointSet(Q1,'or')
ShowPointSet(Q2,'or')
ShowPointSet(P,'*k')
hold off