% Plot profiles
load pressure_displacement_profiles

% Plot initial -Cp and shape
fig1=figure;
plot(initial.x,-initial.cp,'b-'); hold on;
plot(initial.x,-initial.disp,'k-');
hlineini = findobj(gcf,'type','line');
set(hlineini,'LineWidth',2);
legend('Initial Cp', 'Initial Shape');
xlabel('Distance Along airfoil');
ylabel('Distance transverse to airfoil');
A = [];
for i=-0.1:0.1:0.6
     B = [i];
     A = [A ; B];
end
yticks(A);


% Plot optimal -Cp and shape
fig2=figure;
plot(optimal.x,-optimal.cp,'b-'); hold on;
plot(optimal.x,-optimal.disp,'k-');
hlineopt = findobj(gcf, 'type', 'line');
set(hlineopt,'LineStyle',':','LineWidth',2);
legend('Optimal Cp', 'Optimal Shape');


% Save to eps and use fixPS
print(fig1,'-depsc2','Hwk1Prob3_starter1');
print(fig2,'-depsc2','Hwk1Prob3_starter2');
