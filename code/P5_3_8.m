close all
clc
hold on
for  T= 0:27
   PaintMoon( 15 + mod(T,7)*14, 85 - floor(T/7)*14, 6, T)
   
end
hold off
clc