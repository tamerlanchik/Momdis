function y=Shepli_3J(n);
load data_par_s Data0; Data_p=Data0;
ParetoJ=Data_p.J;
if n==1; load data_nash_t Data0; end; % ��� �筮�� ���
if n==2; load data_stek1 Data0; end; % ��� �⥢��� ���
NashJ=Data0.J;
tic;
Buff=ParetoJ(:,1)+ParetoJ(:,2)+ParetoJ(:,3); [V123,nn]=min(Buff);
Buf1=ParetoJ(:,1)+ParetoJ(:,2); [V12,nn]=min(Buf1);
Buf2=ParetoJ(:,1)+ParetoJ(:,3); [V13,nn]=min(Buf2);
Buf3=ParetoJ(:,2)+ParetoJ(:,3); [V23,nn]=min(Buf3);
ShepliJ(1)=0.33*(V123+0.5*(V12+V13)-V23+NashJ(1)-0.5*(NashJ(2)+NashJ(3)));
ShepliJ(2)=0.33*(V123+0.5*(V12+V23)-V13+NashJ(2)-0.5*(NashJ(1)+NashJ(3)));
ShepliJ(3)=0.33*(V123+0.5*(V13+V23)-V12+NashJ(3)-0.5*(NashJ(1)+NashJ(2)));
Data0.Time=toc; Data0.J=ShepliJ;
save data_shepli Data0;
