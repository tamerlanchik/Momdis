function y=Nash_Set_A_2J;
% Сетевой Нэш (сильное активное равновесие)
load data_field;
j_ar(:,:,1:size(DataM.Q,3))=DataM.Q; j_ar(:,:,(size(DataM.Q,3)+1):(size(DataM.Q,3)+size(DataM.J,3)))=DataM.J;
qj=size(j_ar,3); j1=qj-1; j2=qj; C_=zeros(0,qj); C_01=C_; C_02=C_;

tic;
for i=1:size(j_ar,1);
   [f_min,j]=min(j_ar(i,:,j2));
   C_t=[]; for k=1:qj; C_t=[C_t,j_ar(i,j,k)]; end;
   C_01=[C_01; C_t];
end;
for j=1:size(j_ar,2);
   [f_min,i]=min(j_ar(:,j,j1));
   C_t=[]; for k=1:qj; C_t=[C_t,j_ar(i,j,k)]; end;
   C_02=[C_02; C_t];
end;
f_=C_;
for i=1:size(C_01,1);
 for j=1:size(C_02,1);
   if (C_01(i,j1)==C_02(j,j1));
   if (C_01(i,j2)==C_02(j,j2));
      f_=[f_; C_01(i,:)]; break;
   end;
   end;
 end;
end;
C_ff=f_;
Data0.Time=toc;

Data0.Q=C_ff(:,1:j1-1); Data0.J=C_ff(:,j1:j2);
Data1.Q=C_01(:,1:j1-1); Data1.J=C_01(:,j1:j2);
Data2.Q=C_02(:,1:j1-1); Data2.J=C_02(:,j1:j2);
save data_nash_s Data0 Data1 Data2;
