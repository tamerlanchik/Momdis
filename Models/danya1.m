function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
ia=1;
%J
J(1)=T_(end);                                                     
for i=size(T_):(-1):1;                                            
if (X_I(i,1)>0.95*X_I(end,1)) & (X_I(i,1)<1.05*X_I(end,1))        
J(1)=T_(i);                                                       
else break;                                                       
end;                                                              
end;                                                              
J(2)=max(X_I(:,1));                                               
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
ia=1;
%KC
%X
X_(1)=X(2);                                                                                                                                                                                                                                                                               
X_(2)=X(3);                                                                                                                                                                                                                                                                               
X_(3)=X(4);                                                                                                                                                                                                                                                                               
X_(4)=-(0.0039*Q(1)*Q(2)+0.0053*Q(1)*Q(1))/(0.0019*Q(1)*Q(1))*X(4)-(Q(1)*Q(1)+0.0106*Q(1)*0.0307+0.0019)/(0.0019*Q(1)*Q(1))*X(3)-(2*Q(2)*Q(1)+0.0053+3.3*0.0307)/(0.0019*Q(1)*Q(1))*X(2)-(1+18.62*0.0307)/(0.0019*Q(1)*Q(1))*X(1)+7*9.8*(1+18.62*0.0307)/(0.0019*Q(1)*Q(1));              
%KX
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
u_=[];
v_=[];
%KU
function KonFail
%Q
q_max=[0.015,1];
%KQ
%x0
x0=[0,0,0,0];
%Kx0
%Q1
q_min=[0.011, 0.4];
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
r_q=[1,1];
%Krq
%rs
r_set=[15, 15];
%Krs
