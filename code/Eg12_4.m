close all
A= imread([pwd '/MyData/12_4/Cornell_Clock.jpg'],'jpg');
imshow(A)

% תΪ�ڰ�ͼ��չʾ
B= rgb2gray(A);
figure;    imshow(B)
imwrite(B,[pwd '/MyData/12_4/Cornell_Clock_Gray.jpg'],'jpg')

% ��ȡ�ڰ�ͼ��һ����,��������,���۲���ֵȥ���˲�
figure
C= B(850:1150,2350:2650);    % ��ȡһ����ͼ
% �������200��������
for  k= 1:200
    i= floor(1+rand(1)*300);    j= floor(1+rand(1)*300);
    C(i:i+1,j:j+1)= floor(10*rand(2,2));
end
imshow(C)

figure
D= MedianFilter(C);
imshow(D)

% ��Ⲣ��ʾ�ڰ�ͼ�еı�Ե
figure
jpgIn= [pwd '/MyData/12_4/Cornell_Clock.jpg'];
jpgOut= [pwd '/MyData/12_4/Cornell_Clock_Edges.jpg'];
for  tau= 30:10:50
    Edges(jpgIn,jpgOut,tau);
    imshow(imread(jpgOut))
    title(sprintf('Tau = %2d',tau),'Fontsize',14)
    pause(10)
end