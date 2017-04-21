function DrawStepPramid( L, H, c )
% 绘制阶梯金字塔并且用颜色c填充
% 底部长方形长L高H，每一阶高度相同，而长度是其下那阶长度的2/3.顶部阶的长度不能小于H
% 使用DrawRect 
a= 20; b= 10;
DrawRect( a, b, L, H, c )
hold on
while  L >= H
    a= a+L/6;
    b= b+H;
    L= 2*L/3;
    DrawRect( a, b, L, H, c);
end
hold off
end

