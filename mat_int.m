function X_=mat_int(Q,n);
load data_flag_nd;
load data_x0;
if flag_nd==0; % ����������� ������ � �������������� �� �������������� �� [t0,T]
  load data_Tint;
   eps=zeros(1,size(x0,2))+1e-4;
  options=odeset('RelTol',1e-4,'AbsTol',eps,'maxstep',(T-t0)/1000);
  [tt,xx]=ode45(@mat_mod,[t0 T],x0,options,Q);
  X_=[tt,xx];
end;
if flag_nd==1; % ���������� ������ � ���������� ����������� � �� Nt ������
  X_=[0,x0];
  load data_Nt;
  X1=x0;
  for i=1:Nt;
    xx=mat_mod(0,X1,Q);
    X1=xx;
    X_=[X_;Nt,xx];
  end;
end;
