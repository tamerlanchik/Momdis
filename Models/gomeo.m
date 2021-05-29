function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
L21=0;                  
L22=0;                  
Kn=[1,1,1];             
a_=[50,40,30,20];       
b_=[0.2,0.3,0.4,0.5];   
T1=20;                  
F_1=[1,1,1,1];          
F_2=[1,1,1,1];          
%J
if size(T_,1)==1; T_=[T_;T_]; X_I=[X_I;X_I]; end;                                                                             
J(1)=trapz(T_,(75-X_I(:,2)).^2)/Kn(1);                                                                                        
J(2)=L21*trapz(T_,(X_I(:,3)-100).^2)/Kn(2)+L22*trapz(T_,(X_I(:,4)-100).^2)/Kn(3)+(1-L21-L22)*trapz(T_,(75-X_I(:,2)).^2)/Kn(1);
J(1)=J(1); J(2)=-J(2)+1;                                                                                                      
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
L21=0;                  
L22=0;                  
Kn=[1,1,1];             
a_=[50,40,30,20];       
b_=[0.2,0.3,0.4,0.5];   
T1=20;                  
F_1=[1,1,1,1];          
F_2=[1,1,1,1];          
%KC
%X
fx2=0; if X(2)<0; X(2)=0; fx2=1; end;                                                              
M=(X(3)-100)+(X(4)-100);                                                                           
for i=1:4;                                                                                         
if X(2)<50;                                                                                        
if X(2)/a_(i)<=1; F_1(i)=X(2)/a_(i); end;                                                          
if X(2)/a_(i)>1; F_1(i)=1; end;                                                                    
end;                                                                                               
Mn=100;                                                                                            
if M>Mn;                                                                                           
if (1-(M-Mn)*b_(i))>=0; F_2(i)=1-(M-Mn)*b_(i); end;                                                
if (1-(M-Mn)*b_(i))<0; F_2(i)=0; end;                                                              
end;                                                                                               
end;                                                                                               
F_a=1;                                                                                             
if dt>T1;                                                                                          
F_a=exp(-0.013*(dt-T1));                                                                           
end;                                                                                               
F_0=[1,1,1,1];                                                                                     
for i=1:4;                                                                                         
F_(i)=F_0(i)*F_1(i)*F_2(i)*F_a;                                                                    
end;                                                                                               
X_(1)=500/10000*(5*F_(2)*(150*Q(1)-X(1))-10*F_(1)*(X(1)-X(2)));                                    
X_(2)=1000/10000*(10*F_(1)*(X(1)-X(2))-250*Q(2));                                                  
X_(3)=6.825/10000*abs(250*Q(2)-2.5*F_(3)*X(3));                                                    
X_(4)=13.65/10000*abs(250*Q(2)-2.5*F_(4)*X(4));                                                    
if fx2==1; X_(2)=0; end;                                                                           
%KX
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
u_=[];
v_=[];
%KU
function KonFail
%Q
q_max=[1.2,1.2];
%KQ
%x0
x0=[100,75,100,100];
%Kx0
%Q1
q_min=[0.8,0.8];
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
T=100;
%KT
%rq
r_q=[1,1];
%Krq
%rs
r_set=[5,5];
%Krs
