n= 100;
a= 1;    b= 6;
c= 9;    d= 14;

P= RandomPointSet(n,a,b,c,d);
axis equal
hold on
DrawRect(a,c,b-a,d-c,'b')
ShowPointSet(P,'*r')
hold off