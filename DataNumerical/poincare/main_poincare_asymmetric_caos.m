% -----------------------------------------------------------------
%  piezomagbeam_asymmetric.m
%
%  This code numerically integrates the equation of motion of bistable
%  energy harvester: symmetric and asymmetric configuration
%
% ----------------------------------------------------------------- 
%  programmer: João Pedro Norenberg
%              jp.norenberg@unesp.br
%
%  last update: Nov 25, 2024
% -----------------------------------------------------------------

% -----------------------------------------------------------------
clear
clc

% parameters of the system
xi     = 0.01;
chi    = 0.05;
lambda = 0.05;
kappa  = 0.5;
p      = 0.59;
beta   = 0.0;

% excitation condition
f     = 0.5; 
Omega = 0.4;

% asymmetry condition 
delta = 0.75;
phi   = -25;

% equilibrium point
% Fr = @(x) 1/2*x*(1+2*delta*x-x^2) - p*sin(phi*pi/180);
% x0_1 = fsolve(Fr,-1);
% x0_2 = fsolve(Fr,1);

% initial condition
x0 = 2;
v0 = 0;

% state space system of equations
func = @(t,x) [x(2); 
              -2*xi*x(2) + 1/2*x(1)*(1+2*delta*x(1)-x(1)^2) + (1+beta*abs(x(1)))*chi*x(3) + f*cos(Omega*t) + p*sin(phi*pi/180);
              -lambda*x(3) - (1+beta*abs(x(1)))*kappa*x(2)];

% time interval of analysis
Nsamp = 2000;
tspan = 0:(2*pi/Omega/Nsamp):50000;

% numerical integration
opt = odeset('RelTol',1.0e-6,'AbsTol',1.0e-9);
IC  = [x0 v0 0];
[time,x] = ode45(func,tspan,IC,opt);

% plotting
figure
plot(time,x(:,1))

figure
plot(x(:,1),x(:,2))
hold on
plot(x(2:Nsamp:end,1),x(2:Nsamp:end,2),'.')
% xlim([-2 2])
% ylim([-1 1])
hold on
%%
% Save struct variables
poincare_disp = x(2:Nsamp:end,1);
poincare_velo = x(2:Nsamp:end,2);
disp          = x(end*0.8:2:end,1);
velo          = x(end*0.8:2:end,2);
%%
save('data_poincare_asymmetric_chaos','disp','velo','poincare_disp','poincare_velo')
