% P7_1_6 
function P = RandomTransMat(n)
% ����rand(n,n)����һ��nxn�ĸ���ת�ƾ���
% Pÿ��Ԫ�غ;�Ϊ1
r= rand(n,n);
cSum= sum(r); % ���ÿ��Ԫ���ܺ�
P= zeros(n,n);
for  k= 1:n
    P(k,:)= r(k,:)./cSum;
end % for����


end
% RandomTransMat����