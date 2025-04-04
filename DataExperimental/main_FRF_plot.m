%% main_FRF_plot.m
%
% This code plot the experimental FRF obtained from test of bistable energy 
% harvester
% 
% Paper: Asymmetry-enhanced performance in bistable energy harvesters: An 
% experimental study
% Authors: Norenberg, J.P.; Varoto, P.S.; Silva, S.; Cunha Jr, A.
%
% ---- Input:  ----
% Swept sine excitation (0-25 Hz, T = 64s) - 5 mV
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

%% Configuration (A): phi = 0, vr = 0, vl = 0

load('base_rotation_phi=0\swept_sine\mag_vr=0_vl=0\right_eq_point.mat')
FRF_pzt_r_5mV   = H1_2;

load('base_rotation_phi=0\swept_sine\mag_vr=0_vl=0\left_eq_point.mat')
FRF_pzt_l_5mV   = H1_2;

figure()
set(gcf,'Position', [400 300 400 300]);
set(gcf,'color','white');


plot(FRF_pzt_r_5mV(:,1),10*log10(abs(FRF_pzt_r_5mV(:,2))),'b','linewidth',1.8)
hold on 
plot(FRF_pzt_l_5mV(:,1),10*log10(abs(FRF_pzt_l_5mV(:,2))),'r','linewidth',1.8)
xlabel('Frequency [Hz]')
ylabel('Amplitude dB [V/g]')
set(gca,'FontName','Times','FontSize',15,'linewidth',1);
xlim([0 20])

%% Configuration (B): phi = 0, vr = 30, vl = 0

load('base_rotation_phi=0\swept_sine\mag_vr=30_vl=0\right_eq_point.mat')
FRF_pzt_r_5mV   = H1_2;

load('base_rotation_phi=0\swept_sine\mag_vr=30_vl=0\left_eq_point.mat')
FRF_pzt_l_5mV   = H1_2;

figure()
set(gcf,'Position', [400 300 400 300]);
set(gcf,'color','white');


plot(FRF_pzt_r_5mV(:,1),10*log10(abs(FRF_pzt_r_5mV(:,2))),'b','linewidth',1.8)
hold on 
plot(FRF_pzt_l_5mV(:,1),10*log10(abs(FRF_pzt_l_5mV(:,2))),'r','linewidth',1.8)
xlabel('Frequency [Hz]')
ylabel('Amplitude dB [V/g]')
set(gca,'FontName','Times','FontSize',15,'linewidth',1);
xlim([0 20])

%% Configuration (C): phi = 0, vr = 0, vl = 30

load('base_rotation_phi=0\swept_sine\mag_vr=0_vl=30\right_eq_point.mat')
FRF_pzt_r_5mV   = H1_2;

load('base_rotation_phi=0\swept_sine\mag_vr=0_vl=30\left_eq_point.mat')
FRF_pzt_l_5mV   = H1_2;

figure()
set(gcf,'Position', [400 300 400 300]);
set(gcf,'color','white');


plot(FRF_pzt_r_5mV(:,1),10*log10(abs(FRF_pzt_r_5mV(:,2))),'b','linewidth',1.8)
hold on 
plot(FRF_pzt_l_5mV(:,1),10*log10(abs(FRF_pzt_l_5mV(:,2))),'r','linewidth',1.8)
xlabel('Frequency [Hz]')
ylabel('Amplitude dB [V/g]')
set(gca,'FontName','Times','FontSize',15,'linewidth',1);
xlim([0 20])

%% Configuration (D): phi = 45, vr = 0, vl = 0

load('base_rotation_phi=45\swept_sine\mag_vr=0_vl=0\right_eq_point.mat')
FRF_pzt_r_5mV   = H1_2;

load('base_rotation_phi=45\swept_sine\mag_vr=0_vl=0\left_eq_point.mat')
FRF_pzt_l_5mV   = H1_2;

figure()
set(gcf,'Position', [400 300 400 300]);
set(gcf,'color','white');


plot(FRF_pzt_r_5mV(:,1),10*log10(abs(FRF_pzt_r_5mV(:,2))),'b','linewidth',1.8)
hold on 
plot(FRF_pzt_l_5mV(:,1),10*log10(abs(FRF_pzt_l_5mV(:,2))),'r','linewidth',1.8)
xlabel('Frequency [Hz]')
ylabel('Amplitude dB [V/g]')
set(gca,'FontName','Times','FontSize',15,'linewidth',1);
xlim([0 20])

%% Configuration (E): phi = 25, vr = 0, vl = 30

load('base_rotation_phi=25\swept_sine\mag_vr=0_vl=30\right_eq_point.mat')
FRF_pzt_r_5mV   = H1_2;

load('base_rotation_phi=25\swept_sine\mag_vr=0_vl=30\left_eq_point.mat')
FRF_pzt_l_5mV   = H1_2;

figure()
set(gcf,'Position', [400 300 400 300]);
set(gcf,'color','white');


plot(FRF_pzt_r_5mV(:,1),10*log10(abs(FRF_pzt_r_5mV(:,2))),'b','linewidth',1.8)
hold on 
plot(FRF_pzt_l_5mV(:,1),10*log10(abs(FRF_pzt_l_5mV(:,2))),'r','linewidth',1.8)
xlabel('Frequency [Hz]')
ylabel('Amplitude dB [V/g]')
set(gca,'FontName','Times','FontSize',15,'linewidth',1);
xlim([0 20])

%% Configuration (F): phi = 25, vr = 60, vl = 0

load('base_rotation_phi=25\swept_sine\mag_vr=60_vl=0\right_eq_point.mat')
FRF_pzt_r_5mV   = H1_2;

load('base_rotation_phi=25\swept_sine\mag_vr=60_vl=0\left_eq_point.mat')
FRF_pzt_l_5mV   = H1_2;

figure()
set(gcf,'Position', [400 300 400 300]);
set(gcf,'color','white');


plot(FRF_pzt_r_5mV(:,1),10*log10(abs(FRF_pzt_r_5mV(:,2))),'b','linewidth',1.8)
hold on 
plot(FRF_pzt_l_5mV(:,1),10*log10(abs(FRF_pzt_l_5mV(:,2))),'r','linewidth',1.8)
xlabel('Frequency [Hz]')
ylabel('Amplitude dB [V/g]')
set(gca,'FontName','Times','FontSize',15,'linewidth',1);
xlim([0 20])