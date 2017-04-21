x= linspace(0, 2*pi);
y= cos(x);
axis([2*pi 6*pi -1.2 1.2])
hold on
set(gca, 'xTick', 2*pi:pi/2:6*pi)
set(gca, 'xTickLabel', {'2pi', '', '3pi', '', '4pi', '', '5pi', '', '6pi'})
set(gca, 'yTick', -1:0.5:1)
plot(x-2*pi, y, 'r', x, y, 'r', x+2*pi, y, 'r', x+4*pi,y , 'r')
grid on

hold off
shg