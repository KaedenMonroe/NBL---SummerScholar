walk1 = readtable('C:\Users\kaeden\Desktop\Code\Summer Scholar\Data\AGD16_stair.CSV');
walk1.Properties.VariableNames = {'time', 'hindfoot', 'forefoot', 'a', 'b'}

time = walk1{:,1};
hindfoot = walk1{:,2};
forefoot = walk1{:,3};



% Plotting baseline data
figure();
hold on;

plot(time, hindfoot, 'red');
plot(time, forefoot, 'blue');

hold off;