function Pareto_3J(n);

tic;
if n==0; % По области показателей
    load data_field; Q_=[Data0.Q,Data0.J]; QS=size(Q_); j1=QS(2)-2; j2=QS(2)-1; j3=QS(2);
    % 1. Отсечение краев области значений показателей
    [Qmin1,n1]=min(Q_(:,j1)); Qmin1=Q_(n1,j1:j3);
    [Qmin2,n2]=min(Q_(:,j2)); Qmin2=Q_(n2,j1:j3);
    [Qmin3,n3]=min(Q_(:,j3)); Qmin3=Q_(n3,j1:j3);
    cc=0; Qt=Q_.*0;
    for i=1:QS(1);
        if (Q_(i,2)<=Qmin1(2))&(Q_(i,3)<=Qmin1(3));
            if (Q_(i,1)<=Qmin2(1))&(Q_(i,3)<=Qmin2(3));
                if (Q_(i,1)<=Qmin3(1))&(Q_(i,2)<=Qmin3(2));
                    cc=cc+1;
                    for k=1:QS(2);
                        Qt(cc,k)=Q_(i,k);
                    end;
                end;
            end;
        end;
    end;
    Q_1=Qt(1:cc,:);
    Q_P=zeros(1,QS(2));
end;

if n==1; % По области показателей относительно улучшения от точки Нэша (по конусу СТЭК-1)
load data_field; Q_=[Data0.Q,Data0.J]; QS=size(Q_); j1=QS(2)-2; j2=QS(2)-1; j3=QS(2);
% 1. Отсечение краев области значений показателей
 cc=0; Qt=Q_.*0; load data_stek1;
 for i=1:QS(1);
    if Q_(i,j1)<=Data0.J(1);
    if Q_(i,j2)<=Data0.J(2);
    if Q_(i,j3)<=Data0.J(3);
       cc=cc+1; for k=1:QS(2); Qt(cc,k)=Q_(i,k); end;
    end;
    end;
    end;
 end;
 Q_1=Qt(1:cc,:);
 Q_P=zeros(1,QS(2));
end;

if n==2; % По области коалиционных УКУ-решений
 load data_uku_k; Qt=[Data0.Q,Data0.J]; QS=size(Qt); j1=QS(2)-2; j2=QS(2)-1; j3=QS(2);
 Q_1=Qt; Q_P=zeros(1,QS(2));
end;

if n==3; % По области бескоалиционных УКУ-решений
 load data_uku_n; Qt=[Data0.Q,Data0.J]; QS=size(Qt); j1=QS(2)-2; j2=QS(2)-1; j3=QS(2);
 Q_1=Qt; Q_P=zeros(1,QS(2));
end;


% 2. Вырез серединной области на множестве значений показателей

 [Qmin1,n1]=min(Q_1(:,j1)); Qmin1=Q_(n1,j1:j3);
 [Qmin2,n2]=min(Q_1(:,j2)); Qmin2=Q_(n2,j1:j3);
 [Qmin3,n3]=min(Q_1(:,j3)); Qmin3=Q_(n3,j1:j3);
 Q_m=[((Qmin1(1,j1))+Qmin2(1,j1)+Qmin3(1,j1))/3,((Qmin1(1,j2))+Qmin2(1,j2)+Qmin3(1,j2))/3,((Qmin1(1,j3))+Qmin2(1,j3)+Qmin3(1,j3))/3];
 [Qmin,n1]=min(((Q_1(:,j1)-Q_m(1)).^2+(Q_1(:,j2)-Q_m(2)).^2+(Q_1(:,j3)-Q_m(3)).^2).^0.5);
 Qt=Q_1.*0; cc=0;
 for i=1:size(Q_1,1);
   if (Q_1(i,j1)<=Q_1(n1,j1));
   if (Q_1(i,j2)<=Q_1(n1,j2));
   if (Q_1(i,j3)<=Q_1(n1,j3));
      cc=cc+1; for k=1:QS(2); Qt(cc,k)=Q_1(i,k); end;
   end;
   end;
   end;
 end;
 Q_2=Qt(1:cc,:);
 [Qmax,n2]=max(((Q_2(:,j1)-Q_1(n1,j1)).^2+(Q_2(:,j2)-Q_1(n1,j2)).^2+(Q_2(:,j3)-Q_1(n1,j3)).^2).^0.5);
 Qt=Q_1.*0; cc=0;
 for i=1:size(Q_1,1);
   if (Q_1(i,j1)<=Q_2(n2,j1))|(Q_1(i,j2)<=Q_2(n2,j2))|(Q_1(i,j3)<=Q_2(n2,j3));
      cc=cc+1; for k=1:QS(2); Qt(cc,k)=Q_1(i,k); end;
   end;
 end;
 Q_1=Qt(1:cc,:);
                
% 3. Собственно определение Парето-границы
 Q_P=Q_1.*0; cc=0;
 for i=1:size(Q_1,1);
  fl=0; Qt=Q_1(i,:);
  for j=1:size(Q_1,1);
    if (Q_1(j,j1)<Qt(1,j1));
    if (Q_1(j,j2)<Qt(1,j2));
    if (Q_1(j,j3)<Qt(1,j3));
       fl=1; break;
    end;
    end;
    end;
  end;
  if fl==0;
    cc=cc+1; for kk=1:QS(3); Q_P(cc,kk)=Qt(1,kk); end;
  end;
 end;
 Q_P=Q_P(1:cc,:);
 Data0.Time=toc; Data0.Q=Q_P(:,1:j1-1); Data0.J=Q_P(:,j1:j3);
 save data_par_s Data0;
