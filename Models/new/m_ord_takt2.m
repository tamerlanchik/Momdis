function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
a11=0.3;                  
a12=0.2;                  
a13=0.5;                  
a21=0.7;                  
a22=0.2;                  
a23=0.1;                  
K1=6;                     
K2=4;                     
K3=4;                     
P2=0.3;                   
P4=0.7;                   
P5=0.6;                   
%J
J(1)=a11*( X_T(1)*X_T(1) - X_T(4)*X_T(4) ) + a12*(X_T(2)*X_T(2) - X_T(5)*X_T(5))+a13*(X_T(3)*X_T(3)-X_T(6)*X_T(6));
J(2)=a21*( X_T(4)*X_T(4) - X_T(1)*X_T(1) ) + a22*(X_T(5)*X_T(5) - X_T(2)*X_T(2))+a23*(X_T(6)*X_T(6)-X_T(3)*X_T(3));
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
a11=0.3;                  
a12=0.2;                  
a13=0.5;                  
a21=0.7;                  
a22=0.2;                  
a23=0.1;                  
K1=6;                     
K2=4;                     
K3=4;                     
P2=0.3;                   
P4=0.7;                   
P5=0.6;                   
%KC
%X
S1=Q(1)+Q(2)+Q(3);                                                                                                             
X_(1)=0;                                                                                                                       
X_(2)=X(2)-(P4*X(4)*K1+P5*X(5)*K2);                                                                                            
X_(3)=0;                                                                                                                       
X_(4)=X(4)-(P2*Q(1)/S1*X(2));                                                                                                  
X_(5)=X(5)-(P2*Q(2)/S1*X(2));                                                                                                  
X_(6)=X(6)-(P2*Q(3)/S1*X(2));                                                                                                  
%KX
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
u_=[];                                                                     
v_=[];                                                                     
%KU
function KonFail
%Q
q_max=[0.9,0.9,0.9];
%KQ
%x0
x0=[0,15,0,3,2,6];
%Kx0
%Q1
q_min=[0.1,0.1,0.1];
%KQ1
%NC
num_coalic=2;
%KNC
%FN
flag_nd=1;
%KFN
%NT
Nt=1;
%KNT
%rq
r_q=[3,0];
%Krq
%rs
r_set=[5,5,5];
%Krs
