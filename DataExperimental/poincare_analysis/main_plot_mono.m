clear
clc
%% 
% loading data: symmetric
load('mono_symmetric\data_poincare_monostable_sym.mat')
sym_disp_l = disp_l;
sym_velo_l = velo_l;
sym_disp_map_l = disp_map_l;
sym_velo_map_l = velo_map_l;
sym_disp_r = disp_r;
sym_velo_r = velo_r;
sym_disp_map_r = disp_map_r;
sym_velo_map_r = velo_map_r;

% loading data: asymmetric 
load('mono_asymmetric\data_poincare_monostable_asym.mat')
asym_disp_l = disp_l;
asym_velo_l = velo_l;
asym_disp_map_l = disp_map_l;
asym_velo_map_l = velo_map_l;
asym_disp_r = disp_r;
asym_velo_r = velo_r;
asym_disp_map_r = disp_map_r;
asym_velo_map_r = velo_map_r;
%%
% plotting symmetric
figure('Position',[300 300 700 250])
plot(sym_disp_l-0.03,sym_velo_l,'color',[0.8 0.8 0.8])
hold on
plot(sym_disp_r+0.03,sym_velo_r,'color',[0.8 0.8 0.8])
plot(sym_disp_map_l-0.03, sym_velo_map_l,'.r','MarkerSize',20)
plot(sym_disp_map_r+0.03, sym_velo_map_r,'.r','MarkerSize',20)
xlim([-0.05 0.05])
ylim([-.2 .2])
xticks(-0.06:0.03:0.06)

xlabel('displacement [m]')
ylabel('velocity [m/s]')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);
%% plotting asymmetric
figure('Position',[300 300 700 250])

plot(asym_disp_l-0.03    , asym_velo_l,'color',[0.8 0.8 0.8]); hold on
plot(asym_disp_r+0.03    , asym_velo_r,'color',[0.8 0.8 0.8])
plot(asym_disp_map_l-0.03, asym_velo_map_l,'.r','MarkerSize',20)
plot(asym_disp_map_r+0.03, asym_velo_map_r,'.r','MarkerSize',20)
xlim([-0.05 0.05])
ylim([-.2 .2])
xticks(-0.06:0.03:0.06)
xlabel('displacement [m]')
ylabel('velocity [m/s]')
set(gca,'FontName','Helvetica','FontSize',20,'linewidth',1);