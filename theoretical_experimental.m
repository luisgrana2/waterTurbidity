% In this code, the experimental data is shown to compare with the
% theoretical results.
values_experiment = [2.2283E+14,1.0544E+14,6.3561E+13,3.7189E+13,...
    1.9324E+13,1.0774E+13,6.4398E+12,4.3667E+12,2.6713E+12,1.7228E+12];
x_experiment = (0:numel(values_experiment)-1)/(numel(values_experiment)-1);
values_experiment = 100*(values_experiment-values_experiment(end))/(values_experiment(1)-values_experiment(end));

[y,x] = analysis_turbidity(16,"bars");
x = (0:numel(x)-1)/(numel(x)-1);
y = 100*(y-y(end))/(y(1)-y(end));


figure,
plot(x_experiment,values_experiment);
hold on
plot(x,y)
hold off
legend('Experimental Analysis','Theoretical Analysis','Location','northeast'),
xlabel('Turbidity'),ylabel('Quality');

figure,
for i = 1:4
    [y,x] = analysis_turbidity(2^(i+1),"bars");
    x = (0:numel(x)-1)/(numel(x)-1);
    y = 100*(y-y(end))/(y(1)-y(end));
    subplot(2,2,i),plot(x,y),
    title(['Bars, frequency: ',num2str(2^(i+1))]),
    xlabel('std'),ylabel('|F|^2')
end

figure,
for i = 1:4
    [y,x] = analysis_turbidity(2^(i+1),"square");
    x = (0:numel(x)-1)/(numel(x)-1);
    y = 100*(y-y(end))/(y(1)-y(end));
    subplot(2,2,i),plot(x,y),
    title(['Square, frequency: ',num2str(2^(i+1))]),
    xlabel('std'),ylabel('|F|^2')
end