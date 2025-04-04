clear
clc
%% Monostable
% loading data: symmetric
load('mono_symmetric\data_poincare_monostable_sym.mat')
symM_volt_l = volt_l;
symM_volt_r = volt_r;
symM_time = time_vector_sym_magR;

% loading data: asymmetric
load('mono_asymmetric\data_poincare_monostable_asym.mat')
asymM_volt_l = volt_l;
asymM_volt_r = volt_r;
asymM_time = time_vector_sym_magR;

%% Chaos
% loading data: symmetric
load('chaos_symmetric\data_poincare_chaos_sym.mat')
symC_volt = volt;
symC_time = time_vector;

% loading data: asymmetric 1
load('chaos_asymmetric\data_poincare_chaos_asym.mat')
asymC_volt = volt;
asymC_time = time_vector;
%%
Rl = 1e6;
P_symM_l  = rms(symM_volt_l).^2/Rl;
P_symM_r  = rms(symM_volt_r).^2/Rl;
P_asymM_l = rms(asymM_volt_l).^2/Rl;
P_asymM_r = rms(asymM_volt_r).^2/Rl;
P_symC    = rms(symC_volt).^2/Rl;
P_asymC   = rms(asymC_volt).^2/Rl;

% plotting power
MEAN = [P_symM_l P_symM_r P_asymM_l P_asymM_r P_symC P_asymC].*1e6;
X_data = [1:4 5.5 7.5];

clr = [1 0 0; 0 0 1; 1 0 0; 0 0 1; 0.5 0.5 0.5; 0.5 0.5 0.5];

for k = 1:length(MEAN)
    h=bar(X_data(k),MEAN(k));
    set(h,'FaceColor',clr(k,:));
    hold on
end
ax = gca;
ax.YAxis.Exponent = -2;
yticks(0:5e-3:2e-2)
xticks([])

ylabel('average power [\muW]')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);
