function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
a11=0.33;  
a12=0.33;  
a13=0.33;  
a21=0.45;  
a22=0.45;  
a23=0.1;   
Smax=4;    
Lmax=3;    
P31max=0.7;
P32max=0.9;
n3=0.1;    
n4=0.1;    
%J
J(1)=-a11*(Smax-X_T(6))*(Smax-X_T(6))-a12*(Lmax-X_T(7))*(Lmax-X_T(7))+a13*(4-X_T(2));                            
J(2)=a21*(Smax-X_T(6))*(Smax-X_T(6))+a22*(Lmax-X_T(7))*(Lmax-X_T(7))+a23*X_T(1);                                 
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
a11=0.33;  
a12=0.33;  
a13=0.33;  
a21=0.45;  
a22=0.45;  
a23=0.1;   
Smax=4;    
Lmax=3;    
P31max=0.7;
P32max=0.9;
n3=0.1;    
n4=0.1;    
%KC
%X
P31=P31max*exp(-n4*Q(2))*exp(-n3*X(2));                                                               
P32=P32max*exp(-n4*Q(2))*exp(-n3*X(2));                                                               
X_(1)=X(1)-Q(1)*X(3)*P31;                                                                             
X_(2)=X(2)-(1-Q(1))*X(3)*P32;                                                                         
X_(3)=0;                                                                                              
X_(4)=X(4);                                                                                           
X_(5)=X(5);                                                                                           
X_(6)=Smax;                                                                                           
X_(7)=Lmax;                                                                                           
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
x0=[24,4,10,10,48,4,3];
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
