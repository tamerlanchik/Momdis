function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
a11=0.7; 
a12=0.3; 
a21=0.3; 
a22=0.7; 
P13=0.7; 
P14=0.7; 
P31=0.6; 
P32=0.7; 
R1=1;    
R2=1;    
R3=1;    
R4=1;    
%J
J(1)=a11*( X_T(3)*X_T(3) - X_T(1)*X_T(1) ) + a12*(X_T(4)*X_T(4) - X_T(2)*X_T(2));
J(2)=a21*( X_T(1)*X_T(1) - X_T(3)*X_T(3) ) + a22*(X_T(2)*X_T(2) - X_T(4)*X_T(4));
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
a11=0.7; 
a12=0.3; 
a21=0.3; 
a22=0.7; 
P13=0.7; 
P14=0.7; 
P31=0.6; 
P32=0.7; 
R1=1;    
R2=1;    
R3=1;    
R4=1;    
%KC
%X
if X(1)<=1; R1=X(1); end;                                                                                                                               
X_(1)=X(1)-P31*Q(2)*X(3)*R1;                                                                                                                            
if X(2)<=1; R2=X(2); end;                                                                                                                               
X_(2)=X(2)-P32*(1-Q(2))*X(3)*R2;                                                                                                                        
if X(3)<=1; R3=X(3); end;                                                                                                                               
X_(3)=X(3)-P13*Q(1)*X(1)*R3;                                                                                                                            
if X(4)<=1; R4=X(4); end;                                                                                                                               
X_(4)=X(4)-P14*(1-Q(1))*X(1)*R4;                                                                                                                        
%KX
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
u_=[];
v_=[];
%KU
function KonFail
%Q
q_max=[1,1];
%KQ
%x0
x0=[12,16,14,6];
%Kx0
%Q1
q_min=[0,0];
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
r_q=[1,1];
%Krq
%rs
r_set=[20,20];
%Krs
