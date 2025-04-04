% Função para integrar sinais no domínio da frequência
% x = sinal
% Fs = taxa de amostragem
% int_x = sinal integrado

function [int_x] = Integration_frequency(x,Fs)
NFFT = length(x);
x_freq = fft(x, NFFT);
%x_freq(1:20) = 0.01.*x_freq(1:20);
%plot(abs(x_freq));
f = Fs/2*linspace(0,1, NFFT/2)';

f(1) = f(2);
x_freq_int = x_freq(1:NFFT/2)./(f*1j*2*pi);
%x_freq_int(1:5) = 0.1.*x_freq_int(1:5);
%hold on
%plot(abs(x_freq_int)/1e5); xlim([0 1800])
int_x = ifft(x_freq_int, NFFT, 'symmetric'); 
end