clc;
clear all;
close all;
vm=input('Enter message signal amplitude= ');
fm=input('Enter message signal frequency= ');
fc=input('Enter carrier signal frequency= ');
m=input('Enter modulation index= ');
vc=vm/m;
t=0:0.000001:0.001;
mt=vm*sawtooth(2*pi*fm*t);
subplot(4,1,1);
plot(t,mt);
xlabel('Time');
ylabel('Amplitude');
title('MESSAGE SIGNAL');
grid on;
ct=vc*cos(2*pi*fc*t);
subplot(4,1,2);
plot(t,ct);
xlabel('Time');
ylabel('Amplitude');
title('CARRIER SIGNAL');
grid on;
st=vc*(1+m*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(4,1,3);
plot(t,st);
xlabel('Time');
ylabel('Amplitude');
title('AM SIGNAL');
grid on;
x=awgn(st,0.1,'measured');
subplot(4,1,4);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('NOISY AM SIGNAL');
grid on;