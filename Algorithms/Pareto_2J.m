% Процедура поиска Парето-границы для двухкоалиционной задачи:
% число показателей - 2 (1х1); число параметров - не имеет значения

function Pareto_2J(n);

if n==0; % По области показателей
load data_field; 
for i=1:size(DataM.Q,1);
 for j=1:size(DataM.Q,2);
    Data_t=[];
    for k=1:size(DataM.Q,3); Data_t=[Data_t,DataM.Q(i,j,k)]; end;
    for k=1:size(DataM.J,3); Data_t=[Data_t,DataM.J(i,j,k)]; end;
    Q_(i,j,:)=Data_t;
end;
end
QS=size(Q_);
Qmax1=max(max(Q_(:,:,QS(3)-1))); Qmax2=max(max(Q_(:,:,QS(3)))); j1=QS(3)-1; j2=j1+1;
for i=1:QS(1); for j=1:QS(2); if Q_(i,j,j1)==0; if Q_(i,j,j2)==0; Q_(i,j,j1)=Qmax1; Q_(i,j,j2)=Qmax2; end; end; end; end;
% 1. Получение двухмерного массива из трехмерной матрицы
% c отсечением краев области значений показателей
 [Qmin1_,n11]=min(Q_(:,:,j1)); [Qmin1,n12]=min(Qmin1_);
 Qmin1=Q_(n11(n12),n12,j1:j2);
 [Qmin2_,n21]=min(Q_(:,:,j2)); [Qmin2,n22]=min(Qmin2_);
 Qmin2=Q_(n21(n22),n22,j1:j2);
 Q_1=zeros(1,QS(3)); cc=0; Qt=zeros(QS(1)*QS(2),QS(3));
 for i=1:QS(1);
  for j=1:QS(2);
    if Q_(i,j,QS(3))<=Qmin1(2);
    if Q_(i,j,QS(3)-1)<=Qmin2(1);
       cc=cc+1; for k=1:QS(3); Qt(cc,k)=Q_(i,j,k); end;
    end;
    end;
  end;
 end;
 Q_1=Qt(1:cc,:);
 Q_P=zeros(1,QS(3));
end;

if n==1; % По области показателей относительно улучшения от точки Нэша (по конусу СТЭК-1)
load data_field; Q_=DataM.J; QS=size(Q_);
Qmax1=max(max(Q_(:,:,QS(3)-1))); Qmax2=max(max(Q_(:,:,QS(3)))); j1=QS(3)-1; j2=QS(3);
for i=1:QS(1); for j=1:QS(2); if Q_(i,j,j1)==0; if Q_(i,j,j2)==0; Q_(i,j,j1)=Qmax1; Q_(i,j,j2)=Qmax2; end; end; end; end;
% 1. Получение двухмерного массива из трехмерной матрицы
% c отсечением краев области значений показателей
 [Qmin1_,n11]=min(Q_(:,:,j1)); [Qmin1,n12]=min(Qmin1_);
 Qmin1=Q_(n11(n12),n12,j1:j2);
 [Qmin2_,n21]=min(Q_(:,:,j2)); [Qmin2,n22]=min(Qmin2_);
 Qmin2=Q_(n21(n22),n22,j1:j2);
 Q_1=zeros(1,QS(3)); cc=0; Qt=zeros(QS(1)*QS(2),QS(3));
 load data_stek1; 
 for i=1:QS(1);
  for j=1:QS(2);
    if Q_(i,j,j2)<=Qmin1(2);
    if Q_(i,j,j1)<=Qmin2(1);
     if Q_(i,j,j2)<=Data0.J(2);
     if Q_(i,j,j1)<=Data0.J(1);
       cc=cc+1; for k=1:QS(3)-2; Qt(cc,k)=DataM.Q(i,j,k); end; Qt(cc,j1:j2)=Q_(i,j,1:2);
     end;
     end;
    end;
    end;
  end;
 end;
 Q_1=Qt(1:cc,:);
 Q_P=zeros(1,QS(3));
end;

if n==2; % По области УКУ-решений (СТЭК-5)
%load data_field
  load data_uku; 
  Qt=[Data0.Q,Data0.J]; QS(1)=size(Qt,1); QS(2)=size(Qt,1); QS(3)=size(Qt,2); j1=QS(3)-1; j2=QS(3);
 [Qmin1_,n1]=min(Qt(:,j1)); Qmin1=Qt(n1,j1:j2);
 [Qmin2_,n2]=min(Qt(:,j2)); Qmin2=Qt(n2,j1:j2);
 Q_1=Qt; Q_P=zeros(1,QS(3));
end;

% 2. Вырез серединной области на множестве значений показателей
 Q_m=[(Qmin1(1)+Qmin2(1))/2,(Qmin1(2)+Qmin2(2))/2];
 [Qmin,n1]=min(((Q_1(:,j1)-Q_m(1)).^2+(Q_1(:,j2)-Q_m(2)).^2).^0.5);
 Qt=Q_1.*0; cc=0;
 for i=1:size(Q_1,1);
   if (Q_1(i,j1)<=Q_1(n1,j1));
    if (Q_1(i,j2)<=Q_1(n1,j2));
       cc=cc+1; for k=1:QS(3); Qt(cc,k)=Q_1(i,k); end;
       Qt=[Qt; Q_1(i,:)];
    end;
   end;
 end;
 Q_2=Qt(1:cc,:);
 [Qmax,n2]=max(((Q_2(:,j1)-Q_1(n1,j1)).^2+(Q_2(:,j2)-Q_1(n1,j2)).^2).^0.5);
 Qt=Q_1.*0; cc=0;
 for i=1:size(Q_1,1);
   if (Q_1(i,j1)<=Q_2(n2,j1))|(Q_1(i,j2)<=Q_2(n2,j2));
      cc=cc+1; for k=1:QS(3); Qt(cc,k)=Q_1(i,k); end;
   end;
 end;
 Q_1=Qt(1:cc,:); i=0;

% 3. Удаление точек, однозначно не принадлежащих множеству Парето
 for k=1:size(Q_1,1);
  i=i+1; if i>size(Q_1,1); break; end;
  fl=0; Qt=Q_1(i,:);
    for j=1:size(Q_1,1);
     if (Q_1(j,j1)<Qt(1,j1));
      if (Q_1(j,j2)<Qt(1,j2));
       fl=1; break;
      end;
     end;
  end;
  if fl==0;
    Qt1=Q_1.*0; cc=0;
    for j=1:size(Q_1,1);
     if (Q_1(j,j1)<=Qt(1,j1))|(Q_1(j,j2)<=Qt(1,j2));
        cc=cc+1; for kk=1:QS(3); Qt1(cc,kk)=Q_1(j,kk); end;
     end;
    end;
    Q_2=Qt1(1:cc,:);
    Q_1=Q_2;
  end;
 end;

% 4. Собственно определение Парето-границы
 Q_P=zeros(QS(1)*QS(2),QS(3)); cc=0;
 for i=1:size(Q_1,1);
  fl=0; Qt=Q_1(i,:);
    for j=1:size(Q_1,1);
     if (Q_1(j,j1)<Qt(1,j1));
      if (Q_1(j,j2)<Qt(1,j2));
       fl=1; break;
      end;
     end;
  end;
  if fl==0;
    cc=cc+1; for kk=1:QS(3); Q_P(cc,kk)=Qt(1,kk); end;
  end;
 end;
 Q_P=Q_P(1:cc,:);
 Data0.Time=toc; Data0.Q=Q_P(:,1:j1-1); Data0.J=Q_P(:,j1:j2);
 save data_par_s Data0;
