walk1 = readtable('C:\Users\kaeden\Desktop\Code\Summer Scholar\Data\AGD16_stair.CSV');
walk1.Properties.VariableNames = {'time', 'hindfoot', 'forefoot', 'a', 'b'};

% Assigning column data to variables
time = walk1{:,1};
hindfoot = walk1{:,2};
forefoot = walk1{:,3};

% Defining the *arbitrary* cutoff line
cutoff = 1.515 * 10^4;
arbLine = [cutoff, cutoff];

% logical vector above cutoff
mask_hindfoot = hindfoot >= cutoff;
mask_forefoot = forefoot >= cutoff;


% Plotting 'masked' data
figure();
hold on;

plot([time(1), time(end)], arbLine, 'r--', 'LineWidth', 2);   % Cutoff line
plot(time(mask_forefoot), forefoot(mask_forefoot), 'b');      % Datapoints above Cutoff line

hold off;
