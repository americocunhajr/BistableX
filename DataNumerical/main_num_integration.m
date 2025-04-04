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

% excitation condition
f     = 0.105; 
Omega = 0.8;

% asymmetry condition 
delta = -0.15;
phi   = 10;

% equilibrium point
Fr = @(x) 1/2*x*(1+2*delta*x-x^2) - p*sin(phi*pi/180);
x0_1 = fsolve(Fr,-1);
x0_2 = fsolve(Fr,1);

% initial condition
x0 = x0_1;
v0 = 0;

% state space system of equations
func = @(t,x) [x(2); 
              -2*xi*x(2) + 1/2*x(1)*(1+2*delta*x(1)-x(1)^2) + chi*x(3) + f*cos(Omega*t) + p*sin(phi*pi/180);
              -lambda*x(3) - kappa*x(2)];

% time interval of analysis
tspan = 0:0.01:2000;

% numerical integration
opt = odeset('RelTol',1.0e-6,'AbsTol',1.0e-9);
IC  = [x0 v0 0];
[time,x] = ode45(func,tspan,IC,opt);

% plotting
figure
plot(time,x(:,1))

figure
plot(x(round(end*0.5):end,1),x(round(end*0.5):end,2))
xlim([-2 2])
ylim([-1 1])
hold on

% save data
save('data_asym_d-15_P10_f105_O08_ICX100','x','time','IC')