clc;clear all;
N=128 ;       %采样点数

T=1;         %采样时间终点

t=linspace(0,T,N);    %给出N个采样时间ti（i=1:N）
x=12*sin(2*pi*10*t);   %求各采样点样本值x

%x=8*sin(2*pi*10*t)+5*sin(2*pi*20*t)+6*sin(2*pi*40*t);   %求各采样点样本值x

dt=t(2)-t(1);

f=1/dt;        %采样频率（Hz）

X=fft(x);       %计算x的快速傅里叶变换X

F=X(1:N/2+1);   %

f=f*(0:N/2)/N;   %使频率从零开始

figure(1);
plot(t,x)   %绘制振幅—频率图
xlabel('x=8*sin(2*pi*10)+5*sin(2*pi*20*t)+6*sin(2*pi*40*t);');

%ylabel('电压');
figure(2);
plot(f,abs(F)*2/N)   %绘制振幅—频率图
%TF=F*2/N
xlabel('频率');
ylabel('强度');