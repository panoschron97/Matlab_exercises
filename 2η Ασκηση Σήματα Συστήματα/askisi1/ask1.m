function [h1,h2,h3,x,y]=ask1(t)%���������� ����������
h1=heaviside(t);%����� ��������� ��������
h2=-heaviside(t-3);%������� ��������� ��������
h3=heaviside(t-1)-heaviside(t-2);%����� ��������� ��������
x=heaviside(t)+(-heaviside(t-3));%�������� ��� ������� ��� ���������� ����������
y=(heaviside(t)+(-heaviside(t-3))).*(heaviside(t-1)-heaviside(t-2));%� ������ ���� ��� ����������
a=conv(x,y,'same');%����������� ��� ��������� ��� ����������
figure;subplot(2,2,1);plot(t,h1);title('h1(t)')%���������� ��� h1(t)
hold on;subplot(2,2,2);plot(t,h2);title('h2(t)')%���������� ��� h2(t)
hold on;subplot(2,2,3);plot(t,h3);title('h3(t)')%���������� ��� h3(t)
hold on;subplot(2,2,4);plot(t,x);title('x(t)=h1(t)+h2(t)')%���������� ��������� ��� ��� �������
figure;subplot(2,2,1);plot(t,y);title('y(t)=(h1(t)+h2(t)).*h3(t)')%���������� ������ ���� ��� ����������
hold on;subplot(2,2,2);plot(t,a);title('a')%���������� ��� ��������� 
end%����� ����������
