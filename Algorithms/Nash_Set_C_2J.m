function y=Nash_Set_C_2J(n);
% Сильное активное равновесие (локальный Нэш на области слабых равновесий)
load data_field; QS=size(DataM.Q);
if n==0; load data_uku_A; end; % На области симметричных слабых равновесий
if n==1; load data_uku; end; % На области УКУ-решений
Q0=size(Data0.J);
tic;
n_=1; FlagM=zeros(QS(1),QS(2),1);
for i=1:QS(1);
 for j=1:QS(2);
   if n_<=Q0(1);
   if DataM.J(i,j,1)==Data0.J(n_,1);
   if DataM.J(i,j,2)==Data0.J(n_,2);
     n_=n_+1; FlagM(i,j,1)=1;
   end;
   end;
   end;
 end;
end;
Data_=DataM; Jt=[max(max(Data_.J(:,1))),max(max(Data_.J(:,2)))]+1;
for i=1:QS(1);
 for j=1:QS(2);
   if FlagM(i,j,1)~=1; for k=1:size(Jt,2); Data_.J(i,j,k)=Jt(1,k); end; end;
 end;
end;

j_ar(:,:,1:size(DataM.Q,3))=Data_.Q; j_ar(:,:,(size(DataM.Q,3)+1):(size(DataM.Q,3)+size(DataM.J,3)))=Data_.J;
qj=size(j_ar,3); j1=qj-1; j2=qj; C_=zeros(0,qj); C_01=C_; C_02=C_;
for i=1:size(j_ar,1);
   [f_min,j]=min(j_ar(i,:,j2));
   if f_min~=Jt(2);
     C_t=[]; for k=1:qj; C_t=[C_t,j_ar(i,j,k)]; end;
     C_01=[C_01; C_t];
   end;
end;
for j=1:size(j_ar,2);
   [f_min,i]=min(j_ar(:,j,j1));
   if f_min~=Jt(1);
     C_t=[]; for k=1:qj; C_t=[C_t,j_ar(i,j,k)]; end;
     C_02=[C_02; C_t];
   end;
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
save data_nash_a Data0 Data1 Data2;
