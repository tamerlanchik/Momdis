function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
K=12;
%J
J(1)=X_T(1)+a1*X_T(2);                                  
J(2)=X_T(3)+a2*X_T(4);                                  
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
Q1=A1*Q(1)^gamma*Q(2)^(1-gamma);
Q1=A2*Q(3)^gamma*Q(4)^(1-gamma);
P=Demc/(Q1+Q2);
R1=P*Q1;
R2=P*Q2;
TC1=Q(2)*w+Q(1)*r;
TC2=Q(4)*w+Q(3)*r;
pi_1=R1-TC1;
pi_2=R2-TC2;
X_(1)=-pi_1;
X_(3)=-pi_2;
if (TC1<=TC1c); X_2=0; end;
if (TC1>TC1c); X_2=TC1-TC1c; end;
if (TC2<=TC2c); X_4=0; end;
if (TC2>TC2c); X_4=TC2-TC2c; end;
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
u_=[];
v_=[];
%KU
function KonFail
%Q
q_max=[4,400,4,400];
%KQ
%x0
x0=[0,0,0,0];
%Kx0
%Q1
q_min=[1,100,1,100];
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
T=12;
%KT
%rq
r_q=[2,2];
%Krq
%rs
r_set=[5,5,5,5];
%Krs
