% Lab 3 Analysis
clear;clc;close all

%%  Water
clear;clc;close all
D=[0.5,1,1.5,2,2.5,3,3.5,4,4.5,5];                 % In cm
V_water=[1.14,1.08,1,0.98,0.96,0.94,0.89,0.87,0.86,0.85];   % In V

plot(D,V_water,'*'),xlabel('Distance (cm)'),ylabel('V_p_p ( V )'),title('Voltage vs. Probe Distance in Water')

%Parameter set up
P=polyfit(D,log(V_water),1);
m=P(1);
b=exp(P(2));
%Theoretical data set
D2=[0:0.1:5];
V_water2=b*exp(m*D2);
hold on
plot(D2,V_water2, 'b-');
%Trendline Equation
TE=sprintf(' V_p_p = %0.2f*e^{%0.2fr}',b,m);
text(2,2,TE, 'fontsize',15);

%Checking answer
V_theoretical=2.95*exp(-.29.*D)


%% Milk
clear;clc;close all

D=[0.5,1,1.5,2,2.5,3,3.5,4,4.5,5];                 % In cm
V_milk=[1.56,1.26,1.11,1,0.94,0.92,0.85,0.82,0.80,0.78];      % In V

figure,
plot(D,V_milk,'*'),xlabel('Distance (cm)'),ylabel('V_p_p ( V )'),title('Voltage vs. Probe Distance in Milk')

%Parameter set up
P=polyfit(D,log(V_milk),1);
m=P(1);
b=exp(P(2));
%Theoretical data set
D2=[0:0.1:5];
V_milk2=b*exp(m*D2);
hold on
plot(D2,V_milk2, 'b-');
%Trendline Equation
TE=sprintf(' V_p_p = %0.2f*e^{%0.2fr}',b,m);
text(2,1.15,TE, 'fontsize',15);