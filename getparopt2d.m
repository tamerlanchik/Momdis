function getparopt2d;
load('data_par_s.mat');
load('data_field.mat');
Jmin=[min(Data0.J(:,1)) min(Data0.J(:,2))];
Jmax=[max(max(DataM.J(:,:,1))) max(max(DataM.J(:,:,2)))];
%Jmin
[d, ind]=min((Data0.J(:,1)/Jmax(1)-Jmin(1)/Jmax(1)).^2+(Data0.J(:,2)/Jmax(2)-Jmin(2)/Jmax(2)).^2);
ind;
Q=Data0.Q(ind,:);
J=Data0.J(ind,:);
figure;
plot(DataM.J(:,:,1), DataM.J(:,:,2), 'b*');
hold on;
grid on;
plot(Data0.J(:,1), Data0.J(:,2), 'g*');
plot(J(1), J(2), 'r*');
plot(Jmin(1), Jmin(2), 'k*');
Data0.J=[];
Data0.Q=[];
Data0.J=J;
Data0.Q=Q;
save 'data_getparopt2d' Data0