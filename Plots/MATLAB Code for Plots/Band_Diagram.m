% Load the data for each Li value
data1 = readtable("C:\Users\krish\Downloads\TLP Plots\0.02-0.02_new_Band.csv");  % Li = 20 nm
data2 = readtable("C:\Users\krish\Downloads\TLP Plots\0.02-0.04_new_Band.csv");  % Li = 40 nm
data3 = readtable("C:\Users\krish\Downloads\TLP Plots\0.02-0.06_new_Band.csv");  % Li = 60 nm

% Plotting the energy band diagrams
figure; hold on;

% Li = 20 nm
plot(data1.EcX, data1.EcY, 'b-', 'LineWidth', 3, 'MarkerSize', 6);
plot(data1.EvX, data1.EvY, 'r-', 'LineWidth', 3, 'MarkerSize', 6);

% Li = 40 nm
plot(data2.EcX, data2.EcY, 'b--', 'LineWidth', 3, 'MarkerSize', 6);
plot(data2.EvX, data2.EvY, 'r--', 'LineWidth', 3, 'MarkerSize', 6);

% Li = 60 nm
plot(data3.EcX, data3.EcY, 'b:', 'LineWidth', 3, 'MarkerSize', 6);
plot(data3.EvX, data3.EvY, 'r:', 'LineWidth', 3, 'MarkerSize', 6);

% Labels and title
xlabel('Length (\mum)', 'FontSize', 40, 'FontWeight', 'bold');
ylabel('Energy (eV)', 'FontSize', 40, 'FontWeight', 'bold');
title('Energy Band Diagrams for Li-2 = 20, 40, 60 nm');
xlim([0 0.16]);

% Aesthetics
set(gca, 'FontSize', 30, 'FontWeight', 'bold', 'LineWidth', 5);
box on;  % Show border on all four sides

% Legend with smaller font size
lgd = legend(...
    'Ec - Li-2 = 20 nm', 'Ev - Li-2 = 20 nm', ...
    'Ec - Li-2 = 40 nm', 'Ev - Li-2 = 40 nm', ...
    'Ec - Li-2 = 60 nm', 'Ev - Li-2 = 60 nm', ...
    'Location', 'best');
set(lgd, 'FontSize', 20);  % Smaller legend size

hold off;
