% x,y表示一个半径为4，圆心(0,0)的圆
n= 200;   
theta= 2*pi/n;
x= zeros(1,n);
y= zeros(1,n);
for  k= 0:(n-1)
    x(k+1)= 0-4*sin(k*theta);
    y(k+1)= 0+4*cos(k*theta);
end
ShowPolygon(x,y)