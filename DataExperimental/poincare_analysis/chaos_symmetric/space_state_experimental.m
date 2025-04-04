% ------------------------------------------------------------------------
% Plot state space experimental
% João Pedro C. V. Norenberg
% data: 29/03/2022
% 
% INPUT: 
% data = velocity data
% dt   = incremental time
%
% OUTPUT
% ss_disp = displacement (m)
% ss_velo = velocity (m/s)
% ------------------------------------------------------------------------

function [ss_disp,ss_velo] = space_state_experimental(data,dt)
    % converter factor (Mv -> g)
    fconv = 1;%1/20; 
    ss_velo = data.*fconv;
    
    % position calculation 
    ss_disp = real(vel2disp(ss_velo,dt));
    
%     figure()
%     plot(ss_disp);
    
    % cut transient 
    begin = round(length(ss_disp)*0.7);
    stop  = round(length(ss_disp)*0.95);
    ss_disp = ss_disp;%(begin:stop);
    ss_velo = ss_velo;%(begin:stop);
end