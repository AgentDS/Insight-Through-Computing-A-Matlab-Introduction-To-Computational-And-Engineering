close all
figure
axis equal off
hold on

cyan= [0 1 1];      %青色
magenta= [1 0 1];   %品红色
n= 10;
x= [0 3 3 0];
y= [0 0 1 1];

for  j= 1:n
    f= j/n;
    v= (1-f)*cyan + f*magenta;
    fill(x,y+j,v)
    text(3.5, j+0.5, sprintf('[ %4.2f, %4.2f, %4.2f ]', v(1), v(2), v(3)))
end

hold off
shg
