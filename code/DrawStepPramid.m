function DrawStepPramid( L, H, c )
% ���ƽ��ݽ�������������ɫc���
% �ײ������γ�L��H��ÿһ�׸߶���ͬ���������������ǽ׳��ȵ�2/3.�����׵ĳ��Ȳ���С��H
% ʹ��DrawRect 
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

