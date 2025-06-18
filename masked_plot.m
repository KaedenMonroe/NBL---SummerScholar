walk1 = readtable('C:\Users\kaeden\Desktop\Code\Summer Scholar\Data\AGD16_stair.CSV');
walk1.Properties.VariableNames = {'time', 'hindfoot', 'forefoot', 'a', 'b'};

time = walk1{:,1};
hindfoot = walk1{:,2};
forefoot = walk1{:,3};
cutoff = 1.515 * 10^4;
arbLine = [cutoff, cutoff];
mask_hindfoot = hindfoot >= cutoff;
mask_forefoot = forefoot >= cutoff;


% Plotting baseline data
figure();
hold on;

% Use later : 
% plot(time, hindfoot, 'r');                                               Original line 1
% plot(time, forefoot, 'b');                                               Original line 2
plot([time(1), time(end)], arbLine, 'r--', 'LineWidth', 2);   % Cutoff line
plot(time(mask_forefoot), forefoot(mask_forefoot), 'b');

hold off;
