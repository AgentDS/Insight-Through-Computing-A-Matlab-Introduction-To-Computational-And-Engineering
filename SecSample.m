function [f0,fd0,f] = SecSample(x,y,y_1,x0)
% ����֪���ݵ�Ķ���������ֵ����ʽ�����ֵ�㴦��ֵ
% ��֪���ݵ��x����:  x
% ��֪���ݵ��y����:  y
% ��֪���ݵ�ĵ�������:  y_1
% ��ֵ���x����:  x0
% ��õķֶ����ΰ������ز�ֵ����ʽ:  f
% ��õ�x0���Ĳ�ֵ:  f0
% ��õ�x0���ĵ����Ĳ�ֵ:  fd0

syms t;
f= 0.0;
f0= 0.0;
if  length(x)==length(y)
    if  length(y)==length(y_1)
        n= length(x);
    else
        disp('y��y_1��ά�������!');
        return;
    end  % �ڶ���if����
else
    disp('x��y��ά�������!');
    return;
end  % ��һ��if����                                 % ���

for  i= 1:n
    if  x(i)<=x0 && x(i+1)>=x0
        index= i;
        break;
    end  % if����
end  % for����                                     % �ҵ�x0��������

d= y_1(1)*(x(2)-x(1))/2+y(1);
for  i= 2:n-1
    d= d + y_1(i)*(x(i+1)-x(i-1))/2;
end  % for����

h= x(index+1)-x(index);
f= y_1(index+1)*(t-x(index))^2/(2*h)+...
      y_1(index)*(t-x(index+1))^2/(2*h)+d;         % x0��������Ĳ�ֵ����
fd= (t-x(index))*y_1(index+1)/h+y_1(index)*(x(index+1)-t)/h;
                                                   % x0��������Ĳ�ֵ�����ĵ���
f0= double(subs(f,'t',x0));                        % x0���Ĳ�ֵ
fd0= double(subs(fd,'t',x0));                      % x0���ĵ�����ֵ
end
% SecSample��������