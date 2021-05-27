function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
Tla=0.044;   
Tla1=0.86;   
Kla=0.88;    
V=800;       
dzetala=0.06;
nmax=68.6;   
Umax=4.5;    
%J
J(1)=T_(end);                                                     
for i=size(T_):(-1):1;                                            
if (X_I(i,1)>0.95*X_I(end,1)) & (X_I(i,1)<1.05*X_I(end,1))        
J(1)=T_(i);                                                       
else break;                                                       
end;                                                              
end;                                                              
J(2)=max(X_I(:,1));                                               
if J(2)>120;                                                      
J(2)=120;                                                         
end;                                                              
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
Tla=0.044;   
Tla1=0.86;   
Kla=0.88;    
V=800;       
dzetala=0.06;
nmax=68.6;   
Umax=4.5;    
%KC
%X
krp=nmax/(Umax*Kla*V-nmax*Kla*(Q(2)+Q(4)*V));                                                                                                                                                                                                                                                                                                                                                                                       
X_(1)=X(2);                                                                                                                                                                                                                                                                                                                                                                                                                         
X_(2)=X(3);                                                                                                                                                                                                                                                                                                                                                                                                                         
X_(3)=X(4);                                                                                                                                                                                                                                                                                                                                                                                                                         
X_(4)=-(2*Q(1)*Tla*(Q(3)*Tla+dzetala*Q(1)))/(Tla*Tla*Q(1)*Q(1))*X(4)-(Q(1)*Q(1)+Tla*Tla+4*dzetala*Tla*Q(3)*Q(1))/(Tla*Tla*Q(1)*Q(1))*X(3)-(2*(Q(3)*Q(1)+dzetala*Tla)+krp*Kla*Q(2)*Tla1)/(Tla*Tla*Q(1)*Q(1))*X(2)-(1+krp*Kla*(Q(2)+Q(4)*V))/(Tla*Tla*Q(1)*Q(1))*X(1)+(krp*Kla*V)/(Tla*Tla*Q(1)*Q(1))*Umax;                                                                                                                           
%KX
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
u_=[];
v_=[];
%KU
function KonFail
%Q
q_max=[0.015, 5, 1, 0.03];
%KQ
%x0
x0=[0,0,0,0];
%Kx0
%Q1
q_min=[0.011, 0.5, 0.4, 0.005];
%KQ1
%NC
num_coalic=2;
%KNC
%FN
flag_nd=0;
%KFN
%t0
t0=0;
%Kt0
%T
T=5;
%KT
%rq
r_q=[2,2];
%Krq
%rs
r_set=[10, 10, 10, 10];
%Krs
