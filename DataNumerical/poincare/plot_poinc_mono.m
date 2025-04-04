clear
clc
%% Plot monostable cases
%%
% plotting symmetric
% loading: 
load('data_poincare_symmetric_ICn.mat')
disp_sym_ICn = disp;
velo_sym_ICn = velo;
poinc_disp_sym_ICn = poincare_disp;
poinc_velo_sym_ICn = poincare_velo;

load('data_poincare_symmetric_ICp.mat')
disp_sym_ICp = disp;
velo_sym_ICp = velo;
poinc_disp_sym_ICp = poincare_disp;
poinc_velo_sym_ICp = poincare_velo;

figure('Position',[300 300 700 250])
plot(disp_sym_ICn,velo_sym_ICn,'color',[0.5 0.5 0.5])
hold on
plot(poinc_disp_sym_ICn, poinc_velo_sym_ICn,'.r','MarkerSize',20)
plot(disp_sym_ICp,velo_sym_ICp,'color',[0.5 0.5 0.5])
hold on
plot(poinc_disp_sym_ICp, poinc_velo_sym_ICp,'.r','MarkerSize',20)

xlim([-1.3 1.3])
ylim([-0.07 0.07])
% xticks(-0.15:0.05:0.15)
xlabel('displacement')
ylabel('velocity')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);
%%
% plotting asymmetric
% loading: 
load('data_poincare_asymmetric_ICn.mat')
disp_asym_ICn = disp;
velo_asym_ICn = velo;
poinc_disp_asym_ICn = poincare_disp;
poinc_velo_asym_ICn = poincare_velo;

load('data_poincare_asymmetric_ICp.mat')
disp_asym_ICp = disp;
velo_asym_ICp = velo;
poinc_disp_asym_ICp = poincare_disp;
poinc_velo_asym_ICp = poincare_velo;

figure('Position',[300 300 700 250])
plot(disp_asym_ICn,velo_asym_ICn,'color',[0.5 0.5 0.5])
hold on
plot(poinc_disp_asym_ICn, poinc_velo_asym_ICn,'.r','MarkerSize',20)
plot(disp_asym_ICp,velo_asym_ICp,'color',[0.5 0.5 0.5])
hold on
plot(poinc_disp_asym_ICp, poinc_velo_asym_ICp,'.r','MarkerSize',20)

xlim([-1.3 1.3])
ylim([-0.07 0.07])
% xticks(-0.15:0.05:0.15)
xlabel('displacement')
ylabel('velocity')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);