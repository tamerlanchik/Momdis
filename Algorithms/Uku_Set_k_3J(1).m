function y=Uku_Set_k_3J(n);
% Вычисление коалиционного УКУ (полное классическое УКУ-равновесие)

load data_field;
tt=0;
Uku_1=Uku_Set_k_2J(Data1); qj_ar=[Uku_1.Q,Uku_1.J]; Par_1=Pareto_k_2J(qj_ar); j_1=par_1.J; q_1=par_1.Q; tt=tt+Uku_1.Time+Par_1.Time;
Uku_2=Uku_Set_k_2J(Data2); qj_ar=[Uku_2.Q,Uku_2.J]; Par_2=Pareto_k_2J(qj_ar); j_2=par_2.J; q_2=par_2.Q; tt=tt+Uku_2.Time+Par_2.Time;
Uku_3=Uku_Set_k_2J(Data3); qj_ar=[Uku_3.Q,Uku_3.J]; Par_3=Pareto_k_2J(qj_ar); j_3=par_3.J; q_3=par_3.Q; tt=tt+Uku_3.Time+Par_3.Time;
Uku_f=zeros(0,size(qj_ar,2));

if n==1; % На пересечении только Парето-областей проекций УКУ
  tic;
  for i=1:size(q_1,1);
   for j=1:size(q_2,1);
      if q_1(i,:)==q_2(i,:);
         for k=1:size(q_3,1);
           if q_3(k,:)==q_1(i,:);
              Uku_f=[Uku_f; q_1,j_1(i,size(q_1,2)+1),j_2(j,size(q_2,2)+1),j_3(k,size(q_3,2)+1)]; break;
           end;
         end;
      end;
   end;
  end;   
  tt=tt+toc; 
  Data0.Q=Uku_f(:,1:size(q_1,2)); Data0.J=Uku_f(:,(size(q_1,2)+1):(size(q_1,2)+size(j_1,2))); Data0.Time=tt;
  Data1=Par_1; Data2=Par_2; Data3=Par_3;
end;

if n==2; % На пересечении полных проекций УКУ
  q_1=Uku_1.Q; q_2=Uku_2.Q; q_3=Uku_3.Q;
  Uku_f=zeros(0,size(qj_ar,2));
  for i=1:size(q_1,1);
   for j=1:size(q_2,1);
      if q_1(i,:)==q_2(i,:);
         for k=1:size(q_3,1);
           if q_3(k,:)==q_1(i,:);
              Uku_f=[Uku_f; q_1,uku_1(i,size(q_1,2)+1),uku_2(j,size(q_2,2)+1),uku_3(k,size(q_3,2)+1)]; break;
           end;
         end;
      end;
   end;
  end;   
  Data0.Q=Uku_f(:,1:size(q_1,2)); Data0.J=Uku_f(:,(size(q_1,2)+1):(size(q_1,2)+size(j_1,2))); Data0.Time=tt;
  Data1=Uku_1; Data2=Uku_2; Data3=Uku_3;
end;
  
save data_uku_k Data1 Data2 Data3 Data0;
