function STEK_7_2J(n);
% ���������� ������������ �������
load data_shepli Data0; Data_Sh=Data0;
if n==1; load data_uku_A; end; % �� ������� ������ ����������
if n==2; load data_uku; end; % �� ������� ���-�������
if n==3; load data_par_s; end; % �� ������-������� (� ����������� �� �������� ������� � �������)
Data=Data0;
tic;
Data0=[];
for i=1:size(Data.J,1);
   RJ(i,1)=sum((Data.J(i,:)-Data_Sh.J).^2);
end;
[RJ_min,n_min]=min(RJ);
Data0.Time=toc;
Data0.Q(1,:)=Data.Q(n_min,:);
Data0.J(1,:)=Data.J(n_min,:);
save data_stek7 Data0;
