% P10_1_5
function P = RandomPointSet(n,a,b,c,d)
% b>a    d>c
% ����һ������Ϊn�Ľṹ����
% �������ǴӶ���Ϊ(a,c),(b,c),(a,d),(b,d)�ľ����������ѡ�ĵ�
x= rand(n,1)*(b-a)+a;
y= rand(n,1)*(d-c)+c;
for  i= 1:n
    P(i)= MakePoint(x(i),y(i));
end  % for������

end
% RandomPointSet��������