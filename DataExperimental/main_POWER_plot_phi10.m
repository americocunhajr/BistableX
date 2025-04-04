%% main_POWER_plot_phi10.m
%
% This code plot the experimental mean power obtained from test of bistable 
% energy harvester (base rotation phi = 10)
% 
% Paper: Asymmetry-enhanced performance in bistable energy harvesters: An 
% experimental study
% Authors: Norenberg, J.P.; Varoto, P.S.; Silva, S.; Cunha Jr, A.
%
% ---- Input:  ----
% Single-frequency excitation (6.3Hz and 9.1 Hz) - various excit. amplitude
%
% ---- Output: ----
% Chanel 1: base acceleration (accelerometer)
% Chanel 2: voltage (piezo)
% Chanel 3: velocity (laser)
%
% João Pedro Norenberg (jp.norenberg@unesp.br)
% last update: 02/04/2025
%%

clear
clc

% Resistive load:
Rl = 1e6/1e3;

%% phi = 10, vr = 0, vl = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_25mV.mat')
Power_phi10_vr0_vl0_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_50mV.mat')
Power_phi10_vr0_vl0_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_100mV.mat')
Power_phi10_vr0_vl0_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_150mV.mat')
Power_phi10_vr0_vl0_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_200mV.mat')
Power_phi10_vr0_vl0_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi10_vr0_vl0  = [Power_phi10_vr0_vl0_A25_06 ; Power_phi10_vr0_vl0_A50_06 ; ...
                          Power_phi10_vr0_vl0_A100_06; Power_phi10_vr0_vl0_A150_06; ...
                          Power_phi10_vr0_vl0_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_25mV.mat')
Power_phi10_vr0_vl0_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_50mV.mat')
Power_phi10_vr0_vl0_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_100mV.mat')
Power_phi10_vr0_vl0_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_150mV.mat')
Power_phi10_vr0_vl0_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi10_vr0_vl0 = [Power_phi10_vr0_vl0_A25_09 ; Power_phi10_vr0_vl0_A50_09 ; ...
                         Power_phi10_vr0_vl0_A100_09; Power_phi10_vr0_vl0_A150_09; ];

%% phi = 10, vr = 0, vl = 10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=10\amplitude_25mV.mat')
Power_phi10_vr0_vl10_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=10\amplitude_50mV.mat')
Power_phi10_vr0_vl10_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=10\amplitude_100mV.mat')
Power_phi10_vr0_vl10_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=10\amplitude_150mV.mat')
Power_phi10_vr0_vl10_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=10\amplitude_200mV.mat')
Power_phi10_vr0_vl10_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi10_vr0_vl10 = [Power_phi10_vr0_vl10_A25_06 ; Power_phi10_vr0_vl10_A50_06 ; ...
                          Power_phi10_vr0_vl10_A100_06; Power_phi10_vr0_vl10_A150_06; ...
                          Power_phi10_vr0_vl10_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=10\amplitude_25mV.mat')
Power_phi10_vr0_vl10_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=10\amplitude_50mV.mat')
Power_phi10_vr0_vl10_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=10\amplitude_100mV.mat')
Power_phi10_vr0_vl10_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=10\amplitude_150mV.mat')
Power_phi10_vr0_vl10_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi10_vr0_vl10 = [Power_phi10_vr0_vl10_A25_09 ; Power_phi10_vr0_vl10_A50_09; ...
                         Power_phi10_vr0_vl10_A100_09; Power_phi10_vr0_vl10_A150_09; ];

%% phi = 10, vr = 0, vl = 30
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=30\amplitude_25mV.mat')
Power_phi10_vr0_vl30_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=30\amplitude_50mV.mat')
Power_phi10_vr0_vl30_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=30\amplitude_100mV.mat')
Power_phi10_vr0_vl30_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=30\amplitude_150mV.mat')
Power_phi10_vr0_vl30_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=30\amplitude_200mV.mat')
Power_phi10_vr0_vl30_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi10_vr0_vl30 = [Power_phi10_vr0_vl30_A25_06 ; Power_phi10_vr0_vl30_A50_06 ; ...
                          Power_phi10_vr0_vl30_A100_06; Power_phi10_vr0_vl30_A150_06; ...
                          Power_phi10_vr0_vl30_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=30\amplitude_25mV.mat')
Power_phi10_vr0_vl30_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=30\amplitude_50mV.mat')
Power_phi10_vr0_vl30_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=30\amplitude_100mV.mat')
Power_phi10_vr0_vl30_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=30\amplitude_150mV.mat')
Power_phi10_vr0_vl30_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi10_vr0_vl30 = [Power_phi10_vr0_vl30_A25_09 ; Power_phi10_vr0_vl30_A50_09; ...
                         Power_phi10_vr0_vl30_A100_09; Power_phi10_vr0_vl30_A150_09; ];

%% phi = 10, vr = 0, vl = 60
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=60\amplitude_25mV.mat')
Power_phi10_vr0_vl60_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=60\amplitude_50mV.mat')
Power_phi10_vr0_vl60_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=60\amplitude_100mV.mat')
Power_phi10_vr0_vl60_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=60\amplitude_150mV.mat')
Power_phi10_vr0_vl60_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=0_vl=60\amplitude_200mV.mat')
Power_phi10_vr0_vl60_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi10_vr0_vl60 = [Power_phi10_vr0_vl60_A25_06 ; Power_phi10_vr0_vl60_A50_06 ; ...
                          Power_phi10_vr0_vl60_A100_06; Power_phi10_vr0_vl60_A150_06; ...
                          Power_phi10_vr0_vl60_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=60\amplitude_25mV.mat')
Power_phi10_vr0_vl60_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=60\amplitude_50mV.mat')
Power_phi10_vr0_vl60_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=60\amplitude_100mV.mat')
Power_phi10_vr0_vl60_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=0_vl=60\amplitude_150mV.mat')
Power_phi10_vr0_vl60_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi10_vr0_vl60 = [Power_phi10_vr0_vl60_A25_09 ; Power_phi10_vr0_vl60_A50_09; ...
                         Power_phi10_vr0_vl60_A100_09; Power_phi10_vr0_vl60_A150_09; ];

%% phi = 10, vr = 10, vl = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=10_vl=0\amplitude_25mV.mat')
Power_phi10_vr10_vl0_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=10_vl=0\amplitude_50mV.mat')
Power_phi10_vr10_vl0_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=10_vl=0\amplitude_100mV.mat')
Power_phi10_vr10_vl0_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=10_vl=0\amplitude_150mV.mat')
Power_phi10_vr10_vl0_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=10_vl=0\amplitude_200mV.mat')
Power_phi10_vr10_vl0_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi10_vr10_vl0 = [Power_phi10_vr10_vl0_A25_06 ; Power_phi10_vr10_vl0_A50_06 ; ...
                          Power_phi10_vr10_vl0_A100_06; Power_phi10_vr10_vl0_A150_06; ...
                          Power_phi10_vr10_vl0_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=10_vl=0\amplitude_25mV.mat')
Power_phi10_vr10_vl0_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=10_vl=0\amplitude_50mV.mat')
Power_phi10_vr10_vl0_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=10_vl=0\amplitude_100mV.mat')
Power_phi10_vr10_vl0_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=10_vl=0\amplitude_150mV.mat')
Power_phi10_vr10_vl0_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi10_vr10_vl0 = [Power_phi10_vr10_vl0_A25_09 ; Power_phi10_vr10_vl0_A50_09; ...
                         Power_phi10_vr10_vl0_A100_09; Power_phi10_vr10_vl0_A150_09; ];
%% phi = 10, vr = 30, vl = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=30_vl=0\amplitude_25mV.mat')
Power_phi10_vr30_vl0_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=30_vl=0\amplitude_50mV.mat')
Power_phi10_vr30_vl0_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=30_vl=0\amplitude_100mV.mat')
Power_phi10_vr30_vl0_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=30_vl=0\amplitude_150mV.mat')
Power_phi10_vr30_vl0_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=30_vl=0\amplitude_200mV.mat')
Power_phi10_vr30_vl0_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi10_vr30_vl0 = [Power_phi10_vr30_vl0_A25_06 ; Power_phi10_vr30_vl0_A50_06 ; ...
                          Power_phi10_vr30_vl0_A100_06; Power_phi10_vr30_vl0_A150_06; ...
                          Power_phi10_vr30_vl0_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=30_vl=0\amplitude_25mV.mat')
Power_phi10_vr30_vl0_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=30_vl=0\amplitude_50mV.mat')
Power_phi10_vr30_vl0_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=30_vl=0\amplitude_100mV.mat')
Power_phi10_vr30_vl0_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=30_vl=0\amplitude_150mV.mat')
Power_phi10_vr30_vl0_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi10_vr30_vl0 = [Power_phi10_vr30_vl0_A25_09 ; Power_phi10_vr30_vl0_A50_09; ...
                         Power_phi10_vr30_vl0_A100_09; Power_phi10_vr30_vl0_A150_09; ];

%% phi = 10, vr = 60, vl = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=60_vl=0\amplitude_25mV.mat')
Power_phi10_vr60_vl0_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=60_vl=0\amplitude_50mV.mat')
Power_phi10_vr60_vl0_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=60_vl=0\amplitude_100mV.mat')
Power_phi10_vr60_vl0_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=60_vl=0\amplitude_150mV.mat')
Power_phi10_vr60_vl0_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_6.3Hz\mag_vr=60_vl=0\amplitude_200mV.mat')
Power_phi10_vr60_vl0_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi10_vr60_vl0 = [Power_phi10_vr60_vl0_A25_06 ; Power_phi10_vr60_vl0_A50_06 ; ...
                          Power_phi10_vr60_vl0_A100_06; Power_phi10_vr60_vl0_A150_06; ...
                          Power_phi10_vr60_vl0_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=60_vl=0\amplitude_25mV.mat')
Power_phi10_vr60_vl0_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=60_vl=0\amplitude_50mV.mat')
Power_phi10_vr60_vl0_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=60_vl=0\amplitude_100mV.mat')
Power_phi10_vr60_vl0_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=10\single_freq\freq_9.1Hz\mag_vr=60_vl=0\amplitude_150mV.mat')
Power_phi10_vr60_vl0_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi10_vr60_vl0 = [Power_phi10_vr60_vl0_A25_09 ; Power_phi10_vr60_vl0_A50_09; ...
                         Power_phi10_vr60_vl0_A100_09; Power_phi10_vr60_vl0_A150_09; ];


%% plotting

figure(1)
set(gcf,'Position', [400 300 500 400]);
set(gcf,'color','white');

amp_rang = [25 50 100 150 200];
semilogy(amp_rang,POWER_O6_phi10_vr0_vl0,'-ob')
hold on
semilogy(amp_rang,POWER_O6_phi10_vr0_vl10,'*r','MarkerSize',8)
semilogy(amp_rang,POWER_O6_phi10_vr0_vl30,'*m','MarkerSize',8)
semilogy(amp_rang,POWER_O6_phi10_vr0_vl60,'*k','MarkerSize',8)
semilogy(amp_rang,POWER_O6_phi10_vr10_vl0,'dr','MarkerFaceColor','r')
semilogy(amp_rang,POWER_O6_phi10_vr30_vl0,'dm','MarkerFaceColor','m')
semilogy(amp_rang,POWER_O6_phi10_vr60_vl0,'dk','MarkerFaceColor','k')

xlabel('amplitude of excitation [mV]')
ylabel('average power [W]')
title('frequency: 6.3 [Hz]')

xlim([0 220])
ylim([1e-10 1e-3])
set(gca,'FontName','Helvetica','FontSize',15,'linewidth',1);
legend('0^{\circ}','\upsilon_l = 10^{\circ}','\upsilon_l = 30^{\circ}','\upsilon_l = 60^{\circ}','\upsilon_r = 10^{\circ}','\upsilon_r = 30^{\circ}','\upsilon_r = 60^{\circ}','location','best','NumColumns',2,...
    'FontSize',10)

figure(2)
set(gcf,'Position', [400 300 500 400]);
set(gcf,'color','white');

semilogy(amp_rang(1:end-1),POWER_O9_phi10_vr0_vl0,'-ob')
hold on
semilogy(amp_rang(1:end-1),POWER_O9_phi10_vr0_vl10,'*r','MarkerSize',8)
semilogy(amp_rang(1:end-1),POWER_O9_phi10_vr0_vl30,'*m','MarkerSize',8)
semilogy(amp_rang(1:end-1),POWER_O9_phi10_vr0_vl60,'*k','MarkerSize',8)
semilogy(amp_rang(1:end-1),POWER_O9_phi10_vr10_vl0,'dr','MarkerFaceColor','r')
semilogy(amp_rang(1:end-1),POWER_O9_phi10_vr30_vl0,'dm','MarkerFaceColor','m')
semilogy(amp_rang(1:end-1),POWER_O9_phi10_vr60_vl0,'dk','MarkerFaceColor','k')

xlabel('amplitude of excitation [mV]')
ylabel('average power [W]')
title('frequency: 9.1 [Hz]')

xlim([0 220])
ylim([1e-10 1e-3])
set(gca,'FontName','Helvetica','FontSize',15,'linewidth',1);