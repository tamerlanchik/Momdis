function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
T=0.054;                   
T1=1.51;                   
E=0.041;                   
k=0.0016;                  
a11=0.88;                  
a13=341.9;                 
a15=0.05;                  
b11=0.88;                  
b13=341.9;                 
b15=0.05;                  
teta=0.35;                 
gama=0.7854;               
krp=0.077;                 
Kdg=2.3;                   
v=1000;                    
Mz=30;                     
My=30;                     
Jmax =[2                   
2                          
2                          
2                          
2                          
2];                        
Jmin=[0                    
0                          
0                          
0                          
0                          
0];                        
A11=T^2;                                                                                                                                                                                                                                                                                                                                                                                
A21=A11;                                                                                                                                                                                                                                                                                                                                                                                
A12=2*E*T+k*a13*krp*Kdg*T1;                                                                                                                                                                                                                                                                                                                                                             
A22=2*E*T+k*b13*krp*Kdg*T1;                                                                                                                                                                                                                                                                                                                                                             
A13=1+k*a13*krp*(Kdg+v*Q(1));                                                                                                                                                                                                                                                                                                                                                           
A23=1+k*b13*krp*(Kdg+v*Q(2));                                                                                                                                                                                                                                                                                                                                                           
B11=k*cos(teta)*sin(gama)*T1;                                                                                                                                                                                                                                                                                                                                                           
B21=k*sin(gama)*T1;                                                                                                                                                                                                                                                                                                                                                                     
B12=k*cos(teta)*sin(gama)*(T1*a11+1);                                                                                                                                                                                                                                                                                                                                                   
B22=k*sin(gama)*(T1*b11+1);                                                                                                                                                                                                                                                                                                                                                             
B13=k*cos(teta)*sin(gama)*a11;                                                                                                                                                                                                                                                                                                                                                          
B23=k*sin(gama)*b11;                                                                                                                                                                                                                                                                                                                                                                    
X_(1)=X(2);                                                                                                                                                                                                                                                                                                                                                                             
X_(2)=-((A13*A21+B23*B11)/(A11*A21+B21*B11))*X(1)-((A12*A21+B22*B11)/(A11*A21+B21*B11))*X(2)+((B13*A21-A23*B11)/(A11*A21+B21*B11))*X(3)+((B12*A21-A22*B11)/(A11*A21+B21*B11))*X(4)+((k*a15*A21*Mz+k*b15*B11*My)/(A11*A21+B21*B11));                   X_(3)=X(4);                                                                                                                       
X_(4)=((A13*B21-B23*A11)/(B11*B21+A11*A21))*X(1)+((A12*B21-B22*A11)/(B11*B21+A11*A21))*X(2)-((B13*B21+A23*A11)/(B11*B21+A11*A21))*X(3)-((B12*B21+A22*A11)/(B11*B21+A11*A21))*X(4)-((k*a15*B21*Mz+k*b15*A11*My)/(B11*B21+A11*A21));                          X_(5)=(v/T1)*X(1)-(1/T1)*X(5);                                                                                              
X_(6)=(v/T1)*X(3)-(1/T1)*X(6);   
% X_
% X                                                                                                                                                                                                                                                                                                                                                    
% if flag_nd==0; X_=X_'; end;
X_ = X_';