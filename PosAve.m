% M9_1_3
function a = PosAve(x)
% x��һ��ʵ������
% aΪx��������������ƽ��ֵ
ipos= find(x>0);  % x�����������±�
a= mean(x(ipos));

end
% PosAve��������