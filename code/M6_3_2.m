% x,y��ʾһ���뾶Ϊ4��Բ��(0,0)��Բ
n= 200;   
theta= 2*pi/n;
x= zeros(1,n);
y= zeros(1,n);
for  k= 0:(n-1)
    x(k+1)= 0-4*sin(k*theta);
    y(k+1)= 0+4*cos(k*theta);
end
ShowPolygon(x,y)