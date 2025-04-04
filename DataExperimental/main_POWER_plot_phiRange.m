%% main_POWER_plot_phiRange.m
%
% This code plot the experimental mean power obtained from test of bistable 
% energy harvester (various base rotation phi = 0, 10, 25, 45 and without 
% magnet rotation
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

Rl = 1e6/1e3;

%% phi = 0, vr = 0, vl = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=0\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_25mV.mat')
Power_pho0_vr0_vl0_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=0\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_50mV.mat')
Power_phi0_vr0_vl0_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=0\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_100mV.mat')
Power_phi0_vr0_vl0_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=0\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_150mV.mat')
Power_phi0_vr0_vl0_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=0\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_200mV.mat')
Power_phi0_vr0_vl0_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi0_vr0_vl0 = [Power_pho0_vr0_vl0_A25_06; Power_phi0_vr0_vl0_A50_06; Power_phi0_vr0_vl0_A100_06; Power_phi0_vr0_vl0_A150_06;Power_phi0_vr0_vl0_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('base_rotation_phi=0\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_25mV.mat')
Power_pho0_vr0_vl0_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=0\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_50mV.mat')
Power_pho0_vr0_vl0_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=0\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_100mV.mat')
Power_pho0_vr0_vl0_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=0\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_150mV.mat')
Power_pho0_vr0_vl0_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=0\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_200mV.mat')
Power_pho0_vr0_vl0_A200_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi0_vr0_vl0 = [Power_pho0_vr0_vl0_A25_09; Power_pho0_vr0_vl0_A50_09; Power_pho0_vr0_vl0_A100_09; Power_pho0_vr0_vl0_A150_09;Power_pho0_vr0_vl0_A200_09];


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

%% phi = 25, vr = 0, vl = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=25\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_25mV.mat')
Power_phi25_vr0_vl0_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=25\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_50mV.mat')
Power_phi25_vr0_vl0_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=25\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_100mV.mat')
Power_phi25_vr0_vl0_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=25\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_150mV.mat')
Power_phi25_vr0_vl0_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=25\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_200mV.mat')
Power_phi25_vr0_vl0_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi25_vr0_vl0  = [Power_phi25_vr0_vl0_A25_06 ; Power_phi25_vr0_vl0_A50_06 ; ...
                          Power_phi25_vr0_vl0_A100_06; Power_phi25_vr0_vl0_A150_06; ...
                          Power_phi25_vr0_vl0_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=25\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_25mV.mat')
Power_phi25_vr0_vl0_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=25\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_50mV.mat')
Power_phi25_vr0_vl0_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=25\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_100mV.mat')
Power_phi25_vr0_vl0_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=25\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_150mV.mat')
Power_phi25_vr0_vl0_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi25_vr0_vl0 = [Power_phi25_vr0_vl0_A25_09 ; Power_phi25_vr0_vl0_A50_09 ; ...
                         Power_phi25_vr0_vl0_A100_09; Power_phi25_vr0_vl0_A150_09; ];

%% phi = 45, vr = 0, vl = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6.3 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=45\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_25mV.mat')
Power_phi45_vr0_vl0_A25_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=45\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_50mV.mat')
Power_phi45_vr0_vl0_A50_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=45\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_100mV.mat')
Power_phi45_vr0_vl0_A100_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=45\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_150mV.mat')
Power_phi45_vr0_vl0_A150_06 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=45\single_freq\freq_6.3Hz\mag_vr=0_vl=0\amplitude_200mV.mat')
Power_phi45_vr0_vl0_A200_06 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O6_phi45_vr0_vl0  = [Power_phi45_vr0_vl0_A25_06 ; Power_phi45_vr0_vl0_A50_06 ; ...
                          Power_phi45_vr0_vl0_A100_06; Power_phi45_vr0_vl0_A150_06; ...
                          Power_phi45_vr0_vl0_A200_06];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   9.1 Hz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('base_rotation_phi=45\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_25mV.mat')
Power_phi45_vr0_vl0_A25_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=45\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_50mV.mat')
Power_phi45_vr0_vl0_A50_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=45\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_100mV.mat')
Power_phi45_vr0_vl0_A100_09 = rms(X2(round(end/2):end,2)).^2./Rl;

load('base_rotation_phi=45\single_freq\freq_9.1Hz\mag_vr=0_vl=0\amplitude_150mV.mat')
Power_phi45_vr0_vl0_A150_09 = rms(X2(round(end/2):end,2)).^2./Rl;

POWER_O9_phi45_vr0_vl0 = [Power_phi45_vr0_vl0_A25_09 ; Power_phi45_vr0_vl0_A50_09 ; ...
                         Power_phi45_vr0_vl0_A100_09; Power_phi45_vr0_vl0_A150_09; ];

%% plot


figure(1)
set(gcf,'Position', [400 300 500 400]);
set(gcf,'color','white');

amp_rang = [25 50 100 150 200];
semilogy(amp_rang,POWER_O6_phi0_vr0_vl0,'-ob')
hold on
semilogy(amp_rang,POWER_O6_phi10_vr0_vl0,'or','MarkerSize',8,'MarkerFaceColor','r')
semilogy(amp_rang,POWER_O6_phi25_vr0_vl0,'om','MarkerSize',8,'MarkerFaceColor','m')
semilogy(amp_rang,POWER_O6_phi45_vr0_vl0,'ok','MarkerSize',8,'MarkerFaceColor','k')

xlabel('amplitude of excitation [mV]')
ylabel('average power [W]')
title('frequency: 6.3 [Hz]')

xlim([0 220])
ylim([1e-10 1e-3])
legend('0^{\circ}','10^{\circ}','25^{\circ}','45^{\circ}','location','best','NumColumns',2)
set(gca,'FontName','Helvetica','FontSize',15,'linewidth',1);

figure(2)
set(gcf,'Position', [400 300 500 400]);
set(gcf,'color','white');

semilogy(amp_rang,POWER_O9_phi0_vr0_vl0,'-ob')
hold on
semilogy(amp_rang(1:end-1),POWER_O9_phi10_vr0_vl0,'or','MarkerSize',8,'MarkerFaceColor','r')
semilogy(amp_rang(1:end-1),POWER_O9_phi25_vr0_vl0,'om','MarkerSize',8,'MarkerFaceColor','m')
semilogy(amp_rang(1:end-1),POWER_O9_phi45_vr0_vl0,'ok','MarkerSize',8,'MarkerFaceColor','k')

xlabel('amplitude of excitation [mV]')
ylabel('average power [W]')
title('frequency: 9.1 [Hz]')

xlim([0 220])
ylim([1e-10 1e-3])
% legend('0^{\circ}','\upsilon_e = 10^{\circ}','\upsilon_e = 30^{\circ}','\upsilon_e = 60^{\circ}','\upsilon_d = 10^{\circ}','\upsilon_d = 30^{\circ}','\upsilon_d = 60^{\circ}','location','best','NumColumns',2)
set(gca,'FontName','Helvetica','FontSize',15,'linewidth',1);