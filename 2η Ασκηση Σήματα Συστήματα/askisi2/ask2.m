function [x,an]=ask2(n,t)%���������� ����������
T=2*pi;%����������� ��������
Wo=2*pi/T;%����������� ����������
an=zeros(1,length(n));%��� an=0 �� n=������
for i=1:2:length(an);%���������� for ��� 1 �� ���� 2 ����� �� ����� an
an=8/(n(i)^2*pi^2);%��� an=8/n^2*pi^2 �� n=��������
end%����� ��� for
x=zeros(1,length(t));%��� x=0
for i=1:length(x);%���������� for ��� 1 ����� �� ����� x
x(i)=sum(an.*cos(n*Wo*t(i)));%� ��������� x(t)
end%����� ��� for
figure;plot(t,x);%���������� �������� ��� ��� �������
end%����� ����������

