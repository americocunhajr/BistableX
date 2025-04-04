% main_results_fixed_freq.m
%
% This matlab routine serves to calculate the space-state and Poincaré
% Section from experimental data (velocity signal)
% Programmer: João Pedro Norenberg (jp.norenberg@unesp.br)
% last uptade: 06/01/2025

clear
clc

%% asymmetric case

for count = [1:30] %60:93
    if count<10
        name = ['DPsv0000',num2str(count),'.mat'];
    elseif count>=10&count<100
        name = ['DPsv000',num2str(count),'.mat'];
    elseif count>=100
        name = ['DPsv00',num2str(count),'.mat'];
    end
    load(name)
           
    if count == 1
        acc  = X1(:,2);
        velo = smooth(X3(:,2));
        v_vec = velo;
        volt = X2(:,2);
    else
        velo = smooth(X3(:,2));
        v_vec = [v_vec; velo];
        acc  = [acc; X1(:,2)];
        volt = [volt; X2(:,2)];
    end  
end
dt = X3(2,1);
ss_velo = v_vec./10;
disp = Integration_frequency(v_vec,dt);
ss_disp = detrend(disp)/(1/dt)./10000;

% time vector:
t0 = 0.0;
n_points = length(ss_velo);
time_vector = t0 + dt*(0:(n_points-1));

% fft of the time-series
fs = 1/time_vector(2);
n = length(ss_velo.*1e3);
y = fft(ss_velo.*1e3);
fshift = (-n/2:n/2-1)*(fs/n);
yshift = fftshift(y);

figure
plot(fshift,abs(yshift),'linewidth',1.8)

[disp_poinc, velo_poinc, disp_interp, velo_interp, time_interp] = poincare_estimation(time_vector,ss_disp,ss_velo,6.5,245760);
%%
disp = disp_interp(end*0.1:245760/2048:end);
velo = velo_interp(end*0.1:245760/2048:end);
disp_map = disp_poinc(end*0.1:1:end);
velo_map = velo_poinc(end*0.1:1:end);

%%
figure
plot(disp,velo,'color',[0.8 0.8 0.8])
hold on
plot(disp_map, velo_map,'.','MarkerSize',20)
%%
save('data_poincare_chaos_asym','disp',"velo",'disp_map',"velo_map",'volt','time_vector')