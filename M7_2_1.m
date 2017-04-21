a= 0;    b= 6;    n= 301;    x= linspace(a,b,n);
c= 0;    d= 4;    m= 201;    y= linspace(c,d,m);
TVals= fOnGrid2(x,y,@T_plate);
% 显示等值线
v= linspace(5,100,20);
contour(x,y,TVals,v)

% 显示选中的交叉区域
figure
TY= fOnGrid2(x,[1 2 3],@T_plate);
plot(x,TY(1,:),x,TY(2,:),'--',x,TY(3,:),'-.')
xlabel('x','Fontsize',14)
ylabel('Temperature','Fontsize',14)
legend('y = 1','y = 2','y = 3')
shg
