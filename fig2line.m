fig =openfig('pathgt.fig');
fig= gcf;

h=findobj(gca, 'Type','line');
x=get(h,'Xdata');
y=get(h,'Ydata');
A=cell2mat(x);
B=cell2mat(y);

C=[A,B];
D=sortrows(C,2);

X_s=D(:,1);
Y_s=D(:,2);

f=interp1(X_s,Y_s,X_s);

%%
fig1 =openfig('pathgm.fig');
fig1= gcf;

g=findobj(gca, 'Type','line');
x_gm=get(g,'Xdata');
y_gm=get(g,'Ydata');
A1=cell2mat(x_gm);
B1=cell2mat(y_gm);

C1=[A1,B1];
D1=sortrows(C1,2);

X_s1=D1(:,1);
Y_s1=D1(:,2);

F=interp1(X_s1,Y_s1,X_s1);

%%
fig2 =openfig('pathkt.fig');
fig2= gcf;

k=findobj(gca, 'Type','line');
x_kt=get(k,'Xdata');
y_kt=get(k,'Ydata');
A2=cell2mat(x_kt);
B2=cell2mat(y_kt);

C2=[A2,B2];
D2=sortrows(C2,2);

X_s2=D2(:,1);
Y_s2=D2(:,2);

K=interp1(X_s2,Y_s2,X_s2);
%%
plot(X_s,Y_s,'o',X_s,f,'b');
hold on
plot(X_s1,Y_s1,'o',X_s1,F,'r');
hold on
plot(X_s2,Y_s2,'o',X_s2,K,'g');