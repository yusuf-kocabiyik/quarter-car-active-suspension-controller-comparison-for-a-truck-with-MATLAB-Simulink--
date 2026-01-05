%ISO D Tipi Yol Profili Oluşturma (ISO 8608 Standardına Göre, 10 saniyelik)
%Parametreler
v = 20; % Araç hızı (m/s)
total_time = 10; % Toplam süre (s)
road_length = v * total_time; % Yol uzunluğu (m)
dx = 1; % Örnekleme adımı (m)
n = road_length / dx; % Örnek sayısı
dt = dx / v; % Zaman adımı (s)

% ISO 8608'e göre Güç Spektral Yoğunluğu (PSD) parametreleri
Gq0 = 256e-6; % Referans PSD değeri (m^2/(cycle/m))
n0 = 100; % Referans frekansı (cycle/m)
w = 2; % Pürüzlülük derecesi

% Frekans vektörü
frequencies = (0:n-1) * (2 * pi / road_length);

% Rastgele faz
random_phase = rand(1, n) * 2 * pi;

% Yol profili oluşturma
S = Gq0 * (frequencies / n0) .^ -w; % ISO 8608'e göre PSD
S(1) = 0; % DC bileşeni sıfırlanır
amplitude = sqrt(2 * S / (dx * road_length));
road_profile = real(ifft(amplitude .* exp(1i * random_phase)));

% Zaman vektörü
time = (0:n-1) * dt;

% Yol profilini çizme
figure;
plot(time, road_profile);
xlabel('Zaman (s)');
ylabel('Yol Yüksekliği (m)');
title('ISO D Tipi Yol Profili (10 saniye, ISO 8608)');
grid on;

inputsignal = timeseries(road_profile,time);

