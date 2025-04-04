% -----------------------------------------------------------------
% main_PhasePortait_Poincare.m
% ----------------------------------------------------------------- 
%  This is the main file for a program which response the phase 
%  portait and Poincare section for the piezo-magneto-elastic beam.
% ----------------------------------------------------------------- 
%  programmers: 
%        João Pedro Norenberg (jpcvalese@gmail.com)
%        Americo Cunha (americo.cunha@uerj.br)
%
%  last update: Dec 20, 2020
% -----------------------------------------------------------------
%% Processing
clc
clear
close all

% program header
% -----------------------------------------------------------
disp(' ---------------------------------------------------')
disp('         Phase Portait and Poincare Section         ')
disp('            Bistable EH (linear coupling)           ')
disp('                                                    ')
disp(' by                                                 ')
disp(' João Pedro Norenberg / Americo Cunha Jr.           ')
disp(' jpcvalese@gmail.com  / americo.cunha@uerj.br       ')
disp(' ---------------------------------------------------')
% -----------------------------------------------------------

% physical parameters:
Xpar.ksi    = 0.01;          % mechanical damping ratio
Xpar.chi    = 0.05;          % dimensionless piezoeletric coupling term (mechanical)
Xpar.lambda = 0.05;          % dimensionless time constant reciprocal
Xpar.kappa  = 0.5;           % dimensionless piezoeletric coupling term (eletrical)
Xpar.Omega  = 0.8;           % dimensionless excitation frequency
Xpar.beta   = 0;             % nonlinear electromechanical coupling
Xpar.delta  = 0.75;          % asymmetric coefficient of potential energy
Xpar.phi    = -25;           % bias angle (degree)

% equilibrium point 
Fr = @(x) 1/2*x*(1+2*Xpar.delta*x-x^2) + 0.59*sin(Xpar.phi*pi/180);
%x0_1 = fsolve(Fr,-1);

% initial conditions 
IC     = [-2,0,0];      

% range of amplitude excitation
frang = [0.08];

% Loop to compute Phase Portait and Poincare Section
for k = 1:length(frang)
    Xpar.f = frang(k);
    [disp(:,k),velo(:,k)] = phase_portait(Xpar,IC);
    [poincare_disp(:,k),poincare_velo(:,k)] = poincare(Xpar,IC);
end

% Save struct variables
Phase_Poincare.poincare_disp = poincare_disp;
Phase_Poincare.poincare_velo = poincare_velo;
Phase_Poincare.disp          = disp;
Phase_Poincare.velo          = velo;
Phase_Poincare.frang         = frang;
%%
save('data_poincare_asymmetric_chaos','Xpar','disp','velo','poincare_disp','poincare_velo')
%% 

figure
plot(disp,velo,'color',[0.8 0.8 0.8])
hold on
plot(poincare_disp, poincare_velo,'.','MarkerSize',20)