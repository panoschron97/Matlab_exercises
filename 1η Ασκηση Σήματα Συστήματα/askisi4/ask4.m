function [ha,hb,hc]=ask4(t)%���������� ��� function ha,hb,hc
%�� t ����� �� ���� ��� �� ������ ������ t=[-20:0.1:20]
ha=exp(-4.*t).*heaviside(t);%�� ha ����� ��� �� e^(-4*t) ��� �� u(t) ���� ����� �� u(t)
%�� ������� �� heaviside(t)
hb=exp(2.*t).*heaviside(t);%�� hb ����� ��� �� e^(2*t) ��� �� u(t) ���� ����� �� u(t)
%�� ������� �� heaviside(t)
hc=(t-1).*[heaviside(t+3)-heaviside(t-4)];%�� hc ����� ��o (t-1)*[u(t+3)-u(t-4)]
%�� u(t) ����� �� u(t)�� ������� �� heaviside(t)
figure;plot(t,ha);%�������������� �� figure ��� �� ��� ����������� ��� ������� ���������
%ha �� ���� t
figure;plot(t,hb);%�������������� �� figure ��� �� ��� ����������� ��� ������� ���������
%hb �� ���� t
figure;plot(t,hc);%�������������� �� figure ��� �� ��� ����������� ��� ������� ���������
%hc �� ���� t
end%����� ���������� 
