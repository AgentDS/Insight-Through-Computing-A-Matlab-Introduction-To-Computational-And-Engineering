N= 200;
x= linspace(0,1,N);
y1= x;
y2= x.^2;
y3= x.^3;
y4= x.^4;
y5= x.^5;
figure
plot(x, y1, 'r', x, y2, 'b', x, y3, 'k', x, y4, 'g', x, y5, 'y')
