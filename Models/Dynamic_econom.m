function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
beta=0.016;            
P=4*10^6;              
r11=0.2;               
r12=0.2;               
r21=0.2;               
r22=0.2;               
s1=2000;               
s2=3000;               
mu=0.014;              
nu=0.1;                
c=42*10^6;             
%J
J(1)=-X_T(1)/2+abs(X_T(3))/2;                                  
J(2)=-X_T(2)/2+abs(X_T(4))/2;                                  
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
beta=0.016;            
P=4*10^6;              
r11=0.2;               
r12=0.2;               
r21=0.2;               
r22=0.2;               
s1=2000;               
s2=3000;               
mu=0.014;              
nu=0.1;                
c=42*10^6;             
%KC
%X
X_(5)=-mu*X(5);                                                              
X_(6)=-mu*X(6);                                                              
X_(7)=-beta*X(7);                                                            
X_(8)=-beta*X(8);                                                            
if Q(1)>X(5) Q(1)=X(5); end;                                                 
if Q(2)>X(6) Q(2)=X(6); end;                                                 
pt=c/(Q(1)+Q(2));                                                            
R1=(pt-nu*s1*12*exp(mu*dt))*Q(1);                                            
R2=(pt-nu*s2*12*exp(mu*dt))*Q(2);                                            
if R1<0 R1=0; end;                                                           
if R2<0 R2=0; end;                                                           
X_(1)=r21*X(1)+0.7*R1;                                                       
X_(2)=r22*X(2)+0.7*R2;                                                       
if X(3)>0                                                                    
X_(3)=r11*X(3)-0.3*R1;                                                       
else X_(1)=X_(1)+abs(r11*X(3)-0.3*R1); end;                                  
if X(4)>0                                                                    
X_(4)=r12*X(4)-0.3*R2;                                                       
else X_(2)=X_(2)+abs(r12*X(4)-0.3*R2); end;                                  
if X_(3)>X_(7) X_(3)=X_(7); end;                                             
if X_(4)>X_(8) X_(4)=X_(8); end;                                             
%KX
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
u_=[];
v_=[];
%KU
function KonFail
%Q
q_max=[2500,2750];
%KQ
%x0
x0=[0,0,10^7,11*10^6,2500,2750,10^7,11*10^6];
%Kx0
%Q1
q_min=[1,1];
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
T=2;
%KT
%rq
r_q=[1,1];
%Krq
%rs
r_set=[3,3];
%Krs
