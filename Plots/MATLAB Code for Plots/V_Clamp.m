% Li values in micrometers converted to nanometers
Li = [0.02, 0.03, 0.04, 0.05, 0.06, 0.08, 0.1] * 1000;  % Convert to nm

% Vclamp values
Vclamp = [0.6824, 0.7156, 0.6787, 0.6998, 0.7602, 0.9300, 1.0799];

% Rdyn values
Rdyn = Vclamp / 1.33;

% Create figure
figure;
ax = gca;

% Only left y-axis used
plot(Li, Rdyn, 'o', 'LineWidth', 3, 'MarkerSize', 6, ...
     'Color', 'r', 'MarkerFaceColor', 'r', 'LineStyle', 'none');
ylabel('R_{dyn} (\Omega)','FontSize', 30, 'FontWeight', 'bold');
ylim([0.48 0.82]);

% Common x-axis
xlabel('Li-2 (nm)','FontSize', 30, 'FontWeight', 'bold');
xlim([0 110]);

% Aesthetics
set(gca, 'FontSize', 30, 'FontWeight', 'bold', 'LineWidth', 5);
