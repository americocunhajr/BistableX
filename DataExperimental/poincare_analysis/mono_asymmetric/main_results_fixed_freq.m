% main_results_fixed_freq.m
%
% This matlab routine serves to calculate the space-state and Poincaré
% Section from experimental data (velocity signal)
% Programmer: João Pedro Norenberg (jp.norenberg@unesp.br)
% last uptade: 06/01/2025

clear
clc

%% symmetric case (IC: left)
for count = 3:10
    if count<10
        name = ['mono_left_asymmetric/DPsv0000',num2str(count),'.mat'];
    elseif count>=10&count<100
        name = ['mono_left_asymmetric/DPsv000',num2str(count),'.mat'];
    elseif count>=100
        name = ['mono_left_asymmetric/DPsv00',num2str(count),'.mat'];
    end
    load(name)
    if count == 3
        velo = smooth(X3(:,2));
        volt_l = X2(:,2);
        vt = velo;
    else
        velo = smooth(X3(:,2));
        vt = [vt;velo];
        volt_l = [volt_l; X2(:,2)];
    end
end

dt = X3(2,1);
ss_velo_l = vt./10;
disp = Integration_frequency(ss_velo_l,dt);
ss_disp_l = detrend(disp)./(1/dt)/1000;

% time vector:
t0 = 0.0;
n_points = length(ss_velo_l);
time_vector_sym_magL = t0 + dt*(0:(n_points-1));

% fft of the time-series
fs = 1/time_vector_sym_magL(2);
n = length(ss_velo_l.*1e3);
y = fft(ss_velo_l.*1e3);
fshift = (-n/2:n/2-1)*(fs/n);
yshift = fftshift(y);

figure
plot(fshift,abs(yshift),'linewidth',1.8)

[disp_poinc, velo_poinc, disp_interp, velo_interp, time_interp] = poincare_estimation(time_vector_sym_magL,ss_disp_l,ss_velo_l,6.5,65536);

disp_l = disp_interp(end*0.1:65536/2048:end*0.8);
velo_l = velo_interp(end*0.1:65536/2048:end*0.8);
disp_map_l = disp_poinc(end*0.1:1:end*0.8);
velo_map_l = velo_poinc(end*0.1:1:end*0.8);

%% Loading data: symmetric case (IC: right)
for count = 3:10
    if count<10
        name = ['mono_right_asymmetric/DPsv0000',num2str(count),'.mat'];
    elseif count>=10&count<100
        name = ['mono_right_asymmetric/DPsv000',num2str(count),'.mat'];
    elseif count>=100
        name = ['mono_right_asymmetric/DPsv00',num2str(count),'.mat'];
    end
    load(name)
    if count == 3
        volt_r = X2(:,2);
        velo = smooth(X3(:,2));
        vt = velo;
    else
        velo = smooth(X3(:,2));
        vt = [vt;velo];
        volt_r = [volt_r; X2(:,2)];
    end
end
dt = X3(2,1);
ss_velo_r = vt./10;
disp = Integration_frequency(ss_velo_r,dt);
ss_disp_r = detrend(disp)./(1/dt)/1000;

% time vector:
t0 = 0.0;
n_points = length(ss_velo_r);
time_vector_sym_magR = t0 + dt*(0:(n_points-1));

% fft of the time-series
fs = 1/time_vector_sym_magR(2);
n = length(ss_velo_r.*1e3);
y = fft(ss_velo_r.*1e3);
fshift = (-n/2:n/2-1)*(fs/n);
yshift = fftshift(y);

figure
plot(fshift,abs(yshift),'linewidth',1.8)

[disp_poinc, velo_poinc, disp_interp, velo_interp, time_interp] = poincare_estimation(time_vector_sym_magR,ss_disp_r,ss_velo_r,6.5,32768);

disp_r = disp_interp(end*0.1:32768/2048:end*0.8);
velo_r = velo_interp(end*0.1:32768/2048:end*0.8);
disp_map_r = disp_poinc(end*0.1:1:end*0.8);
velo_map_r = velo_poinc(end*0.1:1:end*0.8);
%%
figure
plot(disp_l,velo_l,'color',[0.8 0.8 0.8])
hold on
plot(disp_r,velo_r,'color',[0.8 0.8 0.8])
plot(disp_map_l, velo_map_l,'.','MarkerSize',20)
plot(disp_map_r, velo_map_r,'.','MarkerSize',20)
%%
save('data_poincare_monostable_asym','disp_l',"velo_l",'disp_map_l',"velo_map_l",'disp_r',"velo_r",'disp_map_r',"velo_map_r",'volt_r','volt_l','time_vector_sym_magR')