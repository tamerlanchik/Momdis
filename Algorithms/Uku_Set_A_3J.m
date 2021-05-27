function Uku_Set_A_3J;
% Слабое активное равновесие
load data_field;
qw1=0; qw2=0; qw=0; QS=size(DataM.Q);

tic;
for i=1:QS(1);
   f1_max(i)=max(DataM.J(i,:,1));
end;
for j=1:QS(2);
   f2_max(j)=max(DataM.J(:,j,2));
end;
f1_minmax=min(f1_max);
f2_minmax=min(f2_max);

for i=1:QS(1);
 for j=1:QS(2);
   if DataM.J(i,j,1)<=f1_minmax;
      qw1=qw1+1;
      for k=1:QS(3); Data1.Q(qw1,k)=DataM.Q(i,j,k); end;
      for k=1:size(DataM.J,3); Data1.J(qw1,k)=DataM.J(i,j,k); end;
   end;
   if DataM.J(i,j,2)<=f2_minmax;
      qw2=qw2+1;
      for k=1:QS(3); Data2.Q(qw2,k)=DataM.Q(i,j,k); end;
      for k=1:size(DataM.J,3); Data2.J(qw2,k)=DataM.J(i,j,k); end;
   end;
   if DataM.J(i,j,1)<=f1_minmax;
   if DataM.J(i,j,2)<=f2_minmax;
      qw=qw+1;
      for k=1:QS(3); Data0.Q(qw,k)=DataM.Q(i,j,k); end;
      for k=1:size(DataM.J,3); Data0.J(qw,k)=DataM.J(i,j,k); end;
   end;
   end;
 end;
end;
Data0.Time=toc;
save data_uku_A Data1 Data2 Data3 Data0
