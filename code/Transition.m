function y = Transition(P,x)
% PΪnxn�ĸ���ת�ƾ���
% xΪnx1��������
% yΪnx1��������(����ɷ���ִ����һ��)

% ��ʼ��
[n,n]= size(P);
y= zeros(n,1);
for  i= 1:n
    for  j= 1:n
        y(i)= y(i)+ P(i,j)*x(j);
    end  %�ڶ���for����
end % ��һ��for����



end
% Transition��������