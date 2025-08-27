% Given Li and Breakdown Voltage values
Li = [0.02, 0.03, 0.04, 0.05, 0.06, 0.08, 0.1]*1000;
V_breakdown = [0.47, 0.58, 0.625, 0.66, 0.679, 0.71, 0.74];
V_neg_breakdown = [2.5*0.47,1.65,2.34,2.7,3.22,3.4,3.7]/2.5;
% Plotting
figure;
plot(Li, V_breakdown, 'o-', 'LineWidth', 5, 'MarkerSize', 10, 'Color', 'r'); hold on;
plot(Li, V_neg_breakdown, 'o-', 'LineWidth', 5, 'MarkerSize', 10, 'Color', 'b');

% Labels and formatting
xlabel('Li-2 (in nm)', 'FontSize', 30, 'FontWeight', 'bold');
ylabel('Breakdown Voltage (V)', 'FontSize', 30, 'FontWeight', 'bold');
legend('Positive Breakdown', 'Negative Breakdown')
xlim([0 110]);

set(gca, 'FontSize', 30, 'FontWeight', 'bold', 'LineWidth', 5, 'ycolor', 'k');

