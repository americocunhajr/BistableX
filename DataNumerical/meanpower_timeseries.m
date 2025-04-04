% meanpower_timeseries
function [mean_power] = meanpower_timeseries(time,x)
    
    lambda = 0.05;
    begin1 = round(time(end)*2/3);
    % temporal voltage
    
    Qvolt = x(begin1:end,3);
    
    % temporal interval of analysis
    T = time(end)-time(begin1);
    
    % output power
    power = lambda.*Qvolt.^2;
    mean_power = (1/T).*trapz(time(begin1:end),power);