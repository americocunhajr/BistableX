clear
clc
%% 
% loading data: symmetric
load('chaos_symmetric\data_poincare_chaos_sym.mat')
sym_disp = disp;
sym_velo = velo;
sym_disp_map = disp_map;
sym_velo_map = velo_map;

% loading data: asymmetric 1
load('chaos_asymmetric\data_poincare_chaos_asym.mat')
asym_disp = disp;
asym_velo = velo;
asym_disp_map = disp_map;
asym_velo_map = velo_map;

%%
% plotting symmetric
figure('Position',[300 300 600 380])
plot(sym_disp,sym_velo,'color',[0.8 0.8 0.8])
hold on
plot(sym_disp_map, sym_velo_map,'.r','MarkerSize',20)
xlim([-0.08 0.08])
ylim([-1 1])
% xticks(-0.15:0.05:0.15)

xlabel('displacement [m]')
ylabel('velocity [m/s]')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);
%% plotting asymmetric
figure('Position',[300 300 600 380])
plot(asym_disp    , asym_velo,'color',[0.8 0.8 0.8]); hold on
plot(asym_disp_map, asym_velo_map,'.r','MarkerSize',20)
xlim([-0.08 0.08])
ylim([-1 1])
% xticks(-0.15:0.05:0.15)
xlabel('displacement [m]')
ylabel('velocity [m/s]')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);