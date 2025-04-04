% -----------------------------------------------------------------
%  main_plot.m
%
%  This code plot the results of the bistable energy harvester: 
%  symmetric and asymmetric configuration
%
% ----------------------------------------------------------------- 
%  programmer: João Pedro Norenberg
%              jp.norenberg@unesp.br
%
%  last update: Nov 25, 2024
% -----------------------------------------------------------------

clear
clc

% ploting the phase space
LineW = 1.5;
color_left  = [1.0 0.0 0.0];
color_right = [0.0 0.0 1.0];
%% configuration 01: delta = 0 and phi = 0, symmetric
% low excitation level
load('data\data_sym_f05_O08_IC-100.mat')
Sinitial = round(length(time)*0.7);
Sfinal   = round(length(time));

figure(1)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_sym_f05_O08_IC100.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_right)
axis([-2.2 2.2 -1.5 1.5])

% middle excitation level
load('data\data_sym_f083_O08_IC-100.mat')
figure(2)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_sym_f083_O08_IC100.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_right)
axis([-2.2 2.2 -1.5 1.5])

% high excitation level 
load('data\data_sym_f150_O08_IC-100.mat')
figure(3)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_sym_f150_O08_IC100.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',[0 1 0])
axis([-2.2 2.2 -1.5 1.5])

%% configuration 02: delta = 0.15 and phi = 10, asymmetric
% low excitation level
load('data\data_asym_d15_P10_f03_O08_ICX100.mat')
figure(1)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d15_P10_f03_O08_ICX200.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_right)
axis([-2.2 2.2 -1.5 1.5])

% middle excitation level
load('data\data_asym_d15_P10_f15_O08_ICX100.mat')
figure(2)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d15_P10_f15_O08_ICX200.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_right)
axis([-2.2 2.2 -1.5 1.5])

% high excitation level
load('data\data_asym_d15_P10_f2_O08_ICX100.mat')
figure(3)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d15_P10_f2_O08_ICX200.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',[0 1 0])
axis([-2.2 2.2 -1.5 1.5])

%% configuration 03: delta = -0.15 and phi = -10, asymmetric
% low excitation level
load('data\data_asym_d-15_P-10_f03_O08_ICX100.mat')
figure(1)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d-15_P-10_f03_O08_ICX200.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_right)
axis([-2.2 2.2 -1.5 1.5])

% middle excitation level
load('data\data_asym_d-15_P-10_f16_O08_ICX100.mat')
figure(2)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d-15_P-10_f16_O08_ICX200.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_right)
axis([-2.2 2.2 -1.5 1.5])

% high excitation level
load('data\data_asym_d-15_P-10_f22_O08_ICX100.mat')
figure(3)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d-15_P-10_f22_O08_ICX200.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',[0 1 0])
axis([-2.2 2.2 -1.5 1.5])

%% configuration 04: delta = -0.15 and phi = 10, asymmetric
% low excitation level
load('data\data_asym_d-15_P10_f03_O08_ICX100.mat')
figure(1)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d-15_P10_f03_O08_ICX200.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_right)
axis([-2.2 2.2 -1.5 1.5])

% middle excitation level
load('data\data_asym_d-15_P10_f11_O08_ICX100.mat')
figure(2)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d-15_P10_f11_O08_ICX200.mat')
plot(x(round(Sinitial*1.3):Sfinal,1),x(round(Sinitial*1.3):Sfinal,2),'LineWidth',LineW,'Color',color_right)
axis([-2.2 2.2 -1.5 1.5])

% high excitation level
load('data\data_asym_d-15_P10_f18_O08_ICX100.mat')
figure(3)
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',color_left)
hold on
load('data\data_asym_d-15_P10_f18_O08_ICX200.mat')
plot(x(Sinitial:Sfinal,1),x(Sinitial:Sfinal,2),'LineWidth',LineW,'Color',[0 1 0])
axis([-2.2 2.2 -1.5 1.5])

%% plotting the power recovered
clear
clc

load('data\data_sym_f05_O08_IC100.mat')
mean_power_sym_f05_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_sym_f05_O08_IC-100.mat')
mean_power_sym_f05_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_sym_f083_O08_IC100.mat')
mean_power_sym_f083_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_sym_f083_O08_IC-100.mat')
mean_power_sym_f083_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_sym_f150_O08_IC100.mat')
mean_power_sym_f150_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_sym_f150_O08_IC-100.mat')
mean_power_sym_f150_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d15_P10_f03_O08_ICX100.mat')
mean_power_asym_d15_P10_f03_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d15_P10_f03_O08_ICX200.mat')
mean_power_asym_d15_P10_f03_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d15_P10_f15_O08_ICX100.mat')
mean_power_asym_d15_P10_f15_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d15_P10_f15_O08_ICX200.mat')
mean_power_asym_d15_P10_f15_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d15_P10_f2_O08_ICX100.mat')
mean_power_asym_d15_P10_f2_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d15_P10_f2_O08_ICX200.mat')
mean_power_asym_d15_P10_f2_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P-10_f03_O08_ICX100.mat')
mean_power_asym_dN15_PN10_f03_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P-10_f03_O08_ICX200.mat')
mean_power_asym_dN15_PN10_f03_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P-10_f16_O08_ICX100.mat')
mean_power_asym_dN15_PN10_f16_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P-10_f16_O08_ICX200.mat')
mean_power_asym_dN15_PN10_f16_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P-10_f22_O08_ICX100.mat')
mean_power_asym_dN15_PN10_f22_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P-10_f22_O08_ICX200.mat')
mean_power_asym_dN15_PN10_f22_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P10_f03_O08_ICX100.mat')
mean_power_asym_dN15_P10_f03_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P10_f03_O08_ICX200.mat')
mean_power_asym_dN15_P10_f03_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P10_f11_O08_ICX100.mat')
mean_power_asym_dN15_P10_f11_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P10_f11_O08_ICX200.mat')
mean_power_asym_dN15_P10_f11_O08_ICX200 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P10_f18_O08_ICX100.mat')
mean_power_asym_dN15_P10_f18_O08_ICX100 = meanpower_timeseries(time, x);

load('data\data_asym_d-15_P10_f18_O08_ICX200.mat')
mean_power_asym_dN15_P10_f18_O08_ICX200 = meanpower_timeseries(time, x);
%%
MEAN = [mean_power_sym_f05_O08_ICX100            mean_power_sym_f05_O08_ICX200            mean_power_sym_f083_O08_ICX100           mean_power_sym_f083_O08_ICX200           mean_power_sym_f150_O08_ICX100           mean_power_sym_f150_O08_ICX200           ...
        mean_power_asym_d15_P10_f03_O08_ICX100   mean_power_asym_d15_P10_f03_O08_ICX200   mean_power_asym_d15_P10_f15_O08_ICX100   mean_power_asym_d15_P10_f15_O08_ICX200   mean_power_asym_d15_P10_f2_O08_ICX100    mean_power_asym_d15_P10_f2_O08_ICX200    ...
        mean_power_asym_dN15_PN10_f03_O08_ICX100 mean_power_asym_dN15_PN10_f03_O08_ICX200 mean_power_asym_dN15_PN10_f16_O08_ICX100 mean_power_asym_dN15_PN10_f16_O08_ICX200 mean_power_asym_dN15_PN10_f22_O08_ICX100 mean_power_asym_dN15_PN10_f22_O08_ICX200 ...
        mean_power_asym_dN15_P10_f03_O08_ICX100  mean_power_asym_dN15_P10_f03_O08_ICX200  mean_power_asym_dN15_P10_f11_O08_ICX100  mean_power_asym_dN15_P10_f11_O08_ICX200  mean_power_asym_dN15_P10_f18_O08_ICX100  mean_power_asym_dN15_P10_f18_O08_ICX200   ];
%%
clr = [1 0 0; 0 0 1; 1 0 0; 0 0 1; 1 0 0; 0 0 1;
       1 0 0; 0 0 1; 1 0 0; 0 0 1; 1 0 0; 0 0 1;
       1 0 0; 0 0 1; 1 0 0; 0 0 1; 1 0 0; 0 0 1;
       1 0 0; 0 0 1; 1 0 0; 0 0 1; 1 0 0; 0 0 1];

xdata = [1 2 3 4 5 6  8 9 10 11 12 13  15 16 17 18 19 20  22 23 24 25 26 27];

for k = 1:length(MEAN)
    h=bar(xdata(k),MEAN(k));
    set(h,'FaceColor',clr(k,:));
    hold on
end
xline(7); xline(14); xline(21)




