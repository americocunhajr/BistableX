function [disp_poinc,velo_poinc,disp_filter_interp,velo_filter_interp,time_interp] = poincare_estimation(time,disp,velo,Fexc,Tsamp)
    
    order = 3;
    framelen = 13;
    Nwin = 200;
    
    % applying filter and singular value decomposition:
    disp_filter   = sgolayfilt(SVD_Denoise(disp,Nwin),order,framelen);
    velo_filter   = sgolayfilt(SVD_Denoise(velo,Nwin),order,framelen);

    % adding time point (spline interpolation)
    time_interp = 0:(1/Fexc)/Tsamp:time(end);
    disp_filter_interp = interp1(time,disp_filter,time_interp,'spline');
    velo_filter_interp = interp1(time,velo_filter,time_interp,'spline');
    
    % Poincare intersection
    disp_poinc = disp_filter_interp(Tsamp+1:Tsamp:end);
    velo_poinc = velo_filter_interp(Tsamp+1:Tsamp:end);