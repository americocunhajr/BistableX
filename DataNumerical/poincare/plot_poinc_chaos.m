clear
clc
%% Plot chaotic cases
%%
% plotting symmetric
% loading: 
load('data_poincare_symmetric_chaos.mat')
disp_sym_chaos = disp;
velo_sym_chaos = velo;
poinc_disp_sym_chaos = poincare_disp;
poinc_velo_sym_chaos = poincare_velo;

figure('Position',[300 300 600 380])
plot(disp_sym_chaos,velo_sym_chaos,'color',[0.8 0.8 0.8])
hold on
plot(poinc_disp_sym_chaos, poinc_velo_sym_chaos,'.r','MarkerSize',8)

% xlim([-1.3 1.3])
% ylim([-0.07 0.07])
% xticks(-0.15:0.05:0.15)
xlabel('displacement')
ylabel('velocity')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);
%%
% plotting asymmetric
% loading: 
load('data_poincare_asymmetric_chaos.mat')
disp_asym_chaos = disp;
velo_asym_chaos = velo;
poinc_disp_asym_chaos = poincare_disp;
poinc_velo_asym_chaos = poincare_velo;

figure('Position',[300 300 600 380])
plot(disp_asym_chaos(end*0.7:1:end,1),velo_asym_chaos(end*0.7:1:end,1),'color',[0.8 0.8 0.8])
hold on
plot(poinc_disp_asym_chaos, poinc_velo_asym_chaos,'.r','MarkerSize',8)

xlim([-2 2])
ylim([-1 1])
xlabel('displacement')
ylabel('velocity')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);