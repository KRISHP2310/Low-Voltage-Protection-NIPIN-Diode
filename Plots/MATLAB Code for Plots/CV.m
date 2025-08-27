% Capacitance data grouped by fixed Li-1 values
grouped_data = struct();
grouped_data.Li10 = containers.Map([20, 30, 50, 60, 80, 100], ...
    [3.4598803, 2.6591707, 1.8231038, 1.588, 1.2481696, 1.03]);
grouped_data.Li20 = containers.Map([20, 30, 40, 50, 60, 80, 100], ...
    [2.56243, 2.0563543, 1.7274109, 1.4907166, 1.3107166, 1.0573307, 0.88656703]);
grouped_data.Li40 = containers.Map([20, 30, 40, 50, 60, 80, 100], ...
    [1.7314549, 1.4714549, 1.29033, 1.1534047, 1.043, 0.88499425, 0.76711188]);
grouped_data.Li60 = containers.Map([20, 30, 40, 50, 60, 80, 100], ...
    [1.31, 1.15, 1.05, 0.96001709, 0.887216, 0.76909982, 0.67934588]);

% Colors for each line
colors = [
    0 0 1;       % Blue
    0 0.5 0;     % Green
    1 0 0;       % Red
    0.5 0 0.5    % Purple
];

% Start figure
figure;

fixed_keys = fieldnames(grouped_data);

for i = 1:length(fixed_keys)
    key = fixed_keys{i};
    data_map = grouped_data.(key);
    x_vals = cell2mat(data_map.keys);
    y_vals = cell2mat(data_map.values);
    
    [x_vals, idx] = sort(x_vals);  % Sort for smooth lines
    y_vals = y_vals(idx);
    
    plot(x_vals, y_vals, '-o', ...
        'LineWidth', 3, ...
        'MarkerSize', 6, ...
        'Color', colors(i, :)); 
    hold on;
end

xlabel('Li-2 (nm)', 'FontSize', 36, 'FontWeight', 'bold');
ylabel('Capacitance [pF/mm²]', 'FontSize', 36, 'FontWeight', 'bold');
% title('Capacitance vs. Varying Li-2 for Different Fixed Li-1 Values', 'FontSize', 32, 'FontWeight', 'bold');
legend({'Li-1: 10 nm', 'Li-1: 20 nm', 'Li-1: 40 nm', 'Li-1: 60 nm'}, ...
       'FontSize', 24, 'Location', 'northeast');

set(gca, 'FontSize', 30, 'FontWeight', 'bold', 'LineWidth', 5);
hold off;
