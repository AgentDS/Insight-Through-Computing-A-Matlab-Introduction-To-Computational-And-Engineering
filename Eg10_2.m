n= 50;
for  i= 1:n
    xc= randn(1);    yc= randn(1);
    L= 0.5+0.5*rand(1);
    W= 0.5+0.5*rand(1);
    R(i)= MakeRect(xc-L/3,xc+L/3,yc-W/3,yc+W/3);
end

close all
figure
axis equal off
hold on
for  i= 1:n
    ShowRect(R(i),'y');
end

i= ListofDisjoints(R);
for  k= 1:length(i)
    j= i(k);
    ShowRect(R(j),'r')
end

hold off
title(sprintf('Number of Isolated Rectangles = %ld',length(i)),'Fontsize',14)