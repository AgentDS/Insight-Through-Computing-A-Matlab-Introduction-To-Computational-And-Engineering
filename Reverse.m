% P8_1_4
function y= Reverse(x)
% xΪ1xn��������
% yΪ1xn�Ľ�x��ֵ��ת��õ���������
n= length(x);
idx= n:-1:1;
y= x(idx);
end
% Reverse��������