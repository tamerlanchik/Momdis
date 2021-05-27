function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
Jmax=[2 2 2 2 2 2];
Jmin=[0 0 0 0 0 0];
My=30;             
teta=0.3491;       
gama=0.7854;       
T=0.117;           
E=0.068;           
k=0.007;           
a13=87.1;          
krp=0.077;         
Kdg=3.5;           
T1=1.93;           
b13=87.1;          
v=400;             
Q=[3.55, 3.55];    
a11=0.65;          
b11=0.65;          
Mz=0.25;           
a15=0.05;          
b15=0.05;          
%J
global BufJJJ;                                                                                                                                                                                                                                                                                                            
epsteta=X_T(5)-0.5;                                                                                                                                                                                                                                                                                                       
epspsi=X_T(6)-0.5;                                                                                                                                                                                                                                                                                                        
J_teta_1=(epsteta-0.01)^2;                                                                                                                                                                                                                                                                                                
J_psi_1=(epspsi-0.01)^2; sigteta=(max(X(5))-X_T(5))/X_T(5);                                                                                                                                                                                                                                                               
sigpsi=(max(X(6))-X_T(6))/X_T(6);                                                                                                                                                                                                                                                                                         
J_teta_2=(sigteta-0.2)^2;                     J_psi_2=(sigpsi-0.2)^2;                                                                                                                                                                                                                                                     
for index=0:0.01:T                                                                                                                                                                                                                                                                                                        
if(X_I(5)<X_T(5)-X_T(5)*0.05)                                                                                                                                                                                                                                                                                             
tppsi=index+0.01;                                                                                                                                                                                                                                                                                                         
end                                                                                                                                                                                                                                                                                                                       
if(X_I(5)<X_T(5)+X_T(5)*0.05)                                                                                                                                                                                                                                                                                             
tppsi=index+0.01;                                                                                                                                                                                                                                                                                                         
end                                                                                                                                                                                                                                                                                                                       
end                                                                                                                                                                                                                                                                                                                       
for index=0:0.01:T                                                                                                                                                                                                                                                                                                        
if(X_I(6)<X_T(6)-X_T(6)*0.05)                                                                                                                                                                                                                                                                                             
tpteta=index+0.01;                                                                                                                                                                                                                                                                                                        
end                                                                                                                                                                                                                                                                                                                       
if(X_I(6)<X_T(6)+X_T(6)*0.05)                                                                                                                                                                                                                                                                                             
tpteta=index+0.01;                                                                                                                                                                                                                                                                                                        
end                                                                                                                                                                                                                                                                                                                       
end                                                                                                                                                                                                                                                                                                                       
J_teta_3=(tpteta-0.7)^2;                                                                                                                                                                                                                                                                                                  
J_psi_3=(tppsi-0.7)^2;                                                                                                                                                                                                                                                                                                    
BufJJJ=[J_teta_1; J_teta_2; J_teta_3; J_psi_1; J_psi_2; J_psi_3,];                                                                                                                                                                                                                                                        
BufJJJ=(BufJJJ-Jmin)./(Jmax-Jmin);                                                                                                                                                                                                                                                                                        
J(1)=0.33*BufJJJ(1)+0.33*BufJJJ(2)+0.33*BufJJJ(3); J(2)=0.33*BufJJJ(4)+0.33*BufJJJ(5)+0.33*BufJJJ(6)                                                                                                                                                                                                                      
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
Jmax=[2 2 2 2 2 2];
Jmin=[0 0 0 0 0 0];
My=30;             
teta=0.3491;       
gama=0.7854;       
T=0.117;           
E=0.068;           
k=0.007;           
a13=87.1;          
krp=0.077;         
Kdg=3.5;           
T1=1.93;           
b13=87.1;          
v=400;             
Q=[3.55, 3.55];    
a11=0.65;          
b11=0.65;          
Mz=0.25;           
a15=0.05;          
b15=0.05;          
%KC
%X
A11=T^2;                                                                                                                                                                                                                                                                                                                               
A21=A11;                                                                                                                                                                                                                                                                                                                               
A12=2*E*T+k*a13*krp*Kdg*T1;                                                                                                                                                                                                                                                                                                            
A22=2*E*T+k*b13*krp*Kdg*T1;                                                                                                                                                                             A13=1+k*a13*krp*(Kdg+v*Q(1));                                                                                                  
A23=1+k*a13*krp*(Kdg+v*Q(2));                                                                                                                                                                                                                                                                                                          
B11=k*cos(teta)*sin(gama)*T1;                                                                                                                                                                                                                                                                                                          
B21=k*sin(gama)*T1;                                                                                                                                                                                                                                                                                                                    
B12=k*cos(teta)*sin(gama)*(T1*a11+1);                                                                                                                                                                                                                                                                                                  
B22=k*cos(teta)*sin(gama)*(T1*b11+1);                                                                                                                                                                                                                                                                                                  
B13=k*cos(teta)*sin(gama)*a11;                                                                                                                                                                                                                                                                                                         
B23=k*sin(gama)*b11;                                                                                                                                                                                                                                                                                                                   
X_(1)=X(2);                                                                                                                                                                                                                                                                                                                            
X_(2)=-((A13*A21+B23*B11)/(A11*A21+B21*B11))*X(1)-((A12*A21+B22*B11)/(A11*A21+B21*B11))*X(2)+((B13*A21-A23*B11)/(A11*A21+B21*B11))*X(3)+((B12*A21-A22*B11)/(A11*A21+B21*B11))*X(4)+((k*a15*A21*Mz+k*b15*B11*My)/(A11*A21+B21*B11)); X_(3)=X(4);                                                                                        
X_(4)=((A12*B21-B23*A11)/(B11*B21+A11*A21))*X(1)+((A12*B21-B22*A11)/(B11*B21+A11*A21))*X(2)-((B13*B21+A23*A11)/(B11*B21+A11*A21))*X(3)-((B12*B21+A22*A11)/(B11*B21+A11*A21))*X(4)-((k*a15*B21*Mz+k*b15*A11*My)/(B11*B21+A11*A21)); X_(5)=(v/T1)*X(1)-(1/T1)*X(5);                                                                      
X_(6)=(v/T1)*X(3)-(1/T1)*X(6);                                                                                                                                                                                                                                                                                                         
%KX
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
