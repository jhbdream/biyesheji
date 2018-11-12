clc;clear all;
N=128 ;       %��������

T=1;         %����ʱ���յ�

t=linspace(0,T,N);    %����N������ʱ��ti��i=1:N��
x=12*sin(2*pi*10*t);   %�������������ֵx

%x=8*sin(2*pi*10*t)+5*sin(2*pi*20*t)+6*sin(2*pi*40*t);   %�������������ֵx

dt=t(2)-t(1);

f=1/dt;        %����Ƶ�ʣ�Hz��

X=fft(x);       %����x�Ŀ��ٸ���Ҷ�任X

F=X(1:N/2+1);   %

f=f*(0:N/2)/N;   %ʹƵ�ʴ��㿪ʼ

figure(1);
plot(t,x)   %���������Ƶ��ͼ
xlabel('x=8*sin(2*pi*10)+5*sin(2*pi*20*t)+6*sin(2*pi*40*t);');

%ylabel('��ѹ');
figure(2);
plot(f,abs(F)*2/N)   %���������Ƶ��ͼ
%TF=F*2/N
xlabel('Ƶ��');
ylabel('ǿ��');