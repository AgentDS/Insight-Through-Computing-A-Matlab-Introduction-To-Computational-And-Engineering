function A = MakeColorMap(B,q)
% BΪpx3��ɫ��ӳ��
% q��һ������Ϊ(p-1)�ķǸ���������
% A��һ��ͨ���ѵ���ɫ��ӳ�乹�ɵĴ�ɫ��ӳ��
% ÿ����ɫ��ӳ��ͨ�� InterpColors(B(k,:),B(k+1,:),q(k))����,k= 1:(p-1)
p= size(B,1);
A= [];
for  k= 1:(p-1)
    D= InterpColors(B(k,:),B(k+1,:),q(k));
    if  k==1
        A= [A;D];
    else
        A= [A;D(2:size(D,1),:)];
    end
end

end
% MakeColorMap��������