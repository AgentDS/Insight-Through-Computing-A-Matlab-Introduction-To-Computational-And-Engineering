x= 0:0.01:10;
y= 3.^x + (2+sin(x)).*2.^x;

semilogy(x, y, 'r')
