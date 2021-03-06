function y=Nash_Set_B_3J;
% ???????-???-?????????? (? ????????? eps ???????????? ???????? ???? ? ??? ???????????)
eps=0.1 % ???????? ???????????? ???????
load data_field DataM;
j_ar(:,:,:,1:size(DataM.Q,4))=DataM.Q; j_ar(:,:,:,(size(DataM.Q,4)+1):(size(DataM.Q,4)+size(DataM.J,4)))=DataM.J;
qj=size(j_ar,4); j1=qj-2; j2=qj-1; j3=qj; C_=zeros(0,qj);
C_01=C_; C_02=C_; C_03=C_;
C_12=C_; C_21=C_; C_31=C_;
C_13=C_; C_23=C_; C_32=C_;
load data_nash_s; [mm,nn]=min(sum(Data0.J')'); m_nash0=Data0.J(nn,:);
nash_eps=abs(m_nash0.*eps);
tic;
for i=1:size(j_ar,1);
  for k=1:size(j_ar,3)
    [f_min,j]=min(j_ar(i,:,k,j2));
    for j=1:size(j_ar,2);
      if abs(j_ar(i,j,k,j2)-f_min)<nash_eps(2);
        C_t=[]; for s=1:qj; C_t=[C_t,j_ar(i,j,k,s)]; end;         
        C_13=[C_13; C_t];
      end;
    end;
  end;
  for j=1:size(j_ar,2)
    [f_min,k]=min(j_ar(i,j,:,j3));
    for k=1:size(j_ar,3);
      if abs(j_ar(i,j,k,j3)-f_min)<nash_eps(3);
        C_t=[]; for s=1:qj; C_t=[C_t,j_ar(i,j,k,s)]; end;
        C_12=[C_12; C_t];
      end;
    end;
  end;
  f_=C_; tic;
  for k=1:size(C_13,1);
   for j=1:size(C_12,1);
     if (C_13(k,j1)==C_12(j,j1));
     if (C_13(k,j2)==C_12(j,j2));
     if (C_13(k,j3)==C_12(j,j3));
         if size(C_01,1)==0; f_=[f_; C_13(k,:)]; end; ss=0;
         for s=1:size(C_01,1);
           if (C_01(s,j1)~=C_13(k,j1));
           if (C_01(s,j2)~=C_13(k,j2));
           if (C_01(s,j3)~=C_13(k,j3));
              ss=ss+1;
           end;
           end;
           end;
         end;
         if s==ss; f_=[f_; C_13(k,:)]; break; end;
     end;
     end;
     end;
   end;
  end;
  C_01=[C_01; f_]; ttt=toc;
end;
for j=1:size(j_ar,2);
  for i=1:size(j_ar,1)
    [f_min,k]=min(j_ar(i,j,:,j3));
    for k=1:size(j_ar,3);
      if abs(j_ar(i,j,k,j3)-f_min)<nash_eps(3);
        C_t=[]; for s=1:qj; C_t=[C_t,j_ar(i,j,k,s)]; end;
        C_21=[C_21; C_t];
      end;
    end;
  end;
  for k=1:size(j_ar,3)
    [f_min,i]=min(j_ar(:,j,k,j1));
    for i=1:size(j_ar,1);
      if abs(j_ar(i,j,k,j1)-f_min)<nash_eps(1);
        C_t=[]; for s=1:qj; C_t=[C_t,j_ar(i,j,k,s)]; end;
        C_23=[C_23; C_t];
      end;
    end;
  end;
  f_=C_;
  for i=1:size(C_21,1);
   for k=1:size(C_23,1);
     if (C_21(i,j1)==C_23(k,j1));
     if (C_21(i,j2)==C_23(k,j2));
     if (C_21(i,j3)==C_23(k,j3));
         if size(C_02,1)==0; f_=[f_; C_21(i,:)]; end; ss=0;
         for s=1:size(C_02,1);
           if (C_02(s,j1)~=C_21(i,j1));
           if (C_02(s,j2)~=C_21(i,j2));
           if (C_02(s,j3)~=C_21(i,j3));
              ss=ss+1;
           end;
           end;
           end;
         end;
         if s==ss; f_=[f_; C_21(i,:)]; break; end;
     end;
     end;
     end;
   end;
  end;
  C_02=[C_02; f_];
end;
for k=1:size(j_ar,3);
  for i=1:size(j_ar,1)
    [f_min,j]=min(j_ar(i,:,k,j2));
    for j=1:size(j_ar,2);
      if abs(j_ar(i,j,k,j2)-f_min)<nash_eps(2);
        C_t=[]; for s=1:qj; C_t=[C_t,j_ar(i,j,k,s)]; end;
        C_31=[C_31; C_t];
      end;
    end;
  end;
  for j=1:size(j_ar,2)
    [f_min,i]=min(j_ar(:,j,k,j1));
    for i=1:size(j_ar,1);
      if abs(j_ar(i,j,k,j1)-f_min)<nash_eps(1);
        C_t=[]; for s=1:qj; C_t=[C_t,j_ar(i,j,k,s)]; end;
        C_32=[C_32; C_t];
      end;
    end;
  end;
  f_=C_;
  for i=1:size(C_31,1);
   for j=1:size(C_32,1);
     if (C_21(i,j1)==C_23(j,j1));
     if (C_21(i,j2)==C_23(j,j2));
     if (C_21(i,j3)==C_23(j,j3));
         if size(C_03,1)==0; f_=[f_; C_31(i,:)]; end; ss=0;
         for s=1:size(C_03,1);
           if (C_03(s,j1)~=C_31(i,j1));
           if (C_03(s,j2)~=C_31(i,j2));
           if (C_03(s,j3)~=C_31(i,j3));
              ss=ss+1;
           end;
           end;
           end;
         end;
         if s==ss; f_=[f_; C_31(i,:)]; break; end;
     end;
     end;
     end;
   end;
  end;
  C_03=[C_03; f_];
end;

f_=C_;
for i=1:size(C_01,1);
 for j=1:size(C_02,1);
   if (C_01(i,j1)==C_02(j,j1));
   if (C_01(i,j2)==C_02(j,j2));
   if (C_01(i,j3)==C_02(j,j3));
      for k=1:size(C_03,1);
        if (C_01(i,j1)==C_03(k,j1));
        if (C_01(i,j2)==C_03(k,j2));
        if (C_01(i,j3)==C_03(k,j3));
           f_=[f_; C_01(i,:)]; break;
        end;
        end;
        end;
      end;
   end;
   end;
   end;
 end;
end;
C_ff=f_;

Data0=[]; Data0.Q=C_ff(:,1:j1-1); Data0.J=C_ff(:,j1:j3); Data0.Time=toc;
Data1.Q=C_01(:,1:j1-1); Data1.J=C_01(:,j1:j3);
Data2.Q=C_02(:,1:j1-1); Data2.J=C_02(:,j1:j3);
Data3.Q=C_03(:,1:j1-1); Data3.J=C_03(:,j1:j3);
save data_nash_e Data0 Data1 Data2 Data3;
