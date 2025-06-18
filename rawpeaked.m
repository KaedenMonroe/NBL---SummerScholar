walk1 = readtable('C:\Users\kaeden\Desktop\Code\Summer Scholar\Data\AGD16_stair.CSV');
walk1.Properties.VariableNames = {'time', 'hindfoot', 'forefoot', 'a', 'b'};

time = walk1{:,1};
hindfoot = walk1{:,2};
forefoot = walk1{:,3};
cutoff = 1.515 * 10^4;
arbLine = [cutoff, cutoff];
mask_forefoot = forefoot >= cutoff; %logical telling which values to plot

timeCut = time(mask_forefoot);         % time values where fore is above arb
foreCut = forefoot(mask_forefoot);     % fore values where fore is above arb

[pks, locs] = findpeaks(foreCut, 'MinPeakDistance', 2);

% plot([time(1), time(end)], arbLine, 'r--', 'LineWidth', 2);   % Cutoff line
% plot(timeCut, foreCut, 'k', timeCut(locs), pks, 'bv');        % signal with peaks

perc_change_fore = ((pks - cutoff) ./ cutoff) * 100;

plot(timeCut(locs), perc_change_fore)