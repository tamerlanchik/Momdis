function y=Nash_T;
% Формирование точного Нэш-решения; начальное приближение - точка СТЭК-1 (эффективное сетевое Нэш-решение)
load data_stek1; q0=Data0.Q; % Необходимость проверки существования файла; необходимо сначала запустить процедуру STEK_1
load data_r_q;
load data_qmm;

koal=size(r_q,2);
r_q1=[]; for i=1:koal; r_q1(1,i)=sum(r_q(1,1:i)); end; r_q1=[r_q1;r_q1];
r_q1(1,1)=1; for i=2:koal; r_q1(1,i)=r_q1(2,i-1)+1; end;
%q_min=zeros(1,size(q0,2)); q_max=q_min+1; - как пример, задание граничных условий на параметры
%q_min=[0.8,0.8]; q_max=[1.2,1.2]; % Под рассматриваемую задачу
load data_x0;
tic;
for i=1:1000;
  q_old=q0;
  for k=1:koal;
    q_min_=q0; q_min_(1,r_q1(1,k):r_q1(2,k))=q_min(1,r_q1(1,k):r_q1(2,k));
    q_max_=q0; q_max_(1,r_q1(1,k):r_q1(2,k))=q_max(1,r_q1(1,k):r_q1(2,k));
    options = optimset('LargeScale','off');
    @mat_opt;
    q0;
    q_min_;
    q_max_;
    @mat_ogr;
    options;
    k
    [q_,fval,exitflag,output] = fmincon(@mat_opt,q0,[],[],[],[],q_min_,q_max_,@mat_ogr,options,k);
    q0=q_;
  end;
  q_new=q_;
  ss=(sum((q_new-q_old).^2))^0.5;
  if ss<0.001; break; end;
end;
Q_=q_new; X_=mat_int(Q_,x0); J_=mat_fun(X_,Q_,0);
Data0.Time=toc;
Data0.Q=Q_; Data0.J=J_;
save data_nash_t Data0;
