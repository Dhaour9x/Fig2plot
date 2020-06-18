clear;
close all;
clc;
f = openfig('test1.fig');
H = findobj(gca,'Type','line');
x_data = cell2mat(get(H,'xdata'));
y_data = cell2mat(get(H,'ydata'));
%close(f)
g = openfig('test2.fig');
G = findobj(gca,'Type','line');
x1_data = cell2mat(get(G,'xdata'));
y1_data = cell2mat(get(G,'ydata'));
%close(g)
t = openfig('gmapping.fig');
T = findobj(gca,'Type','line');
x2_data = cell2mat(get(T,'xdata'));
y2_data = cell2mat(get(T,'ydata'));
figure
scatter(x_data,y_data,'r','.');
%hold on
figure
scatter(x1_data,y1_data,'b','.');
%hold on
figure
scatter(x2_data,y2_data,'k','.');
xlabel('x');
ylabel('y');