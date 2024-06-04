clear all
sig = csvread('data.csv'); % сигнал с осциллографа
Td = sig(2,1)-sig(1,1); % период дискретизаци
t=linspace(0, 24999*Td, 25000); % интервал времени для идеального сигнала
f = 1000; % частота идеального сигнала
ideal_sin = -2.9 / 2 * sin(2 * pi * f * t) + 3.3 / 2 + 0.05; % идеальный сигнал
ideal_sin=ideal_sin.';
plot(t, sig(:,2), 'LineWidth', 0.5)
hold on;
plot(t, ideal_sin, 'LineWidth', 2)
xlabel('Время (с)');
ylabel('Напряжение (В)');

% преобразование Фурье
fft_ideal = abs(fft(ideal_sin)/25000);
data_sig = sig(:, 2);
fft_sig = abs(fft(data_sig)/25000);
ff=linspace(0,24999/25000*1/Td, 1/Td/25000);
ff=ff.'

output_data_fft = zeros(length(fft_ideal), 2);
output_data_fft(:, 1) = fft_ideal;
output_data_fft(:, 2) = fft_sig;

csvwrite('fft.CSV', output_data_fft);
csvwrite('ff.CSV', ff);
