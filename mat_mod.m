function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
a11=1;         
a12=1;         
a13=1;         
a21=0.1;       
a22=0.1;       
a23=0.1;       
Smax=4;        
Lmax=3;        
P41max=0.25;   
P51max=0.35;   
P32max=0.6;    
P16max=0.2;    
P17max=0.95;   
n1=5;          
n3=0.1;        
n4=0.1;        
n5=0.1;        
n6=0.1;        
P41=P41max*exp(-n5*Q(5))*exp(-n3*X(2));                                                                                                                                                                                                                                                                                                                                                     
P51=P51max*exp(-n6*Q(5))*exp(-n3*X(2));                                                                                                                                                                                                                                                                                                                                                     
P32=P32max*exp(-n4*Q(5))*exp(-n3*X(2));                                                                                                                                                                                                                                                                                                                                                     
P16=P16max*exp(-n1*Q(5));                                                                                                                                                                                                                                                                                                                                                                   
X_(1)=X(1)+Q(2)-(1-Q(4))*X(4)*P41-X(5)*P51;                                                                                                                                                    X_(2)=X(2)-(1-Q(3))*X(3)*P32;                                                                                                                                                                
X_(3)=X(3);                                                                                                                                                                                                                                                                                                                                                                                 
X_(4)=0;                                                                                                                                                                                                                                                                                                                                                                                    
X_(5)=0;                                                                                                                                                                                                                                                                                                                                                                                    
X_(6)=X(6)-Q(1)*X_(1)*P16;                                                                                                                                                                                                                                                                                                                                                                  
X_(7)=X(7)-(1-Q(1))*X_(1)*P17max;                                                                                                                                                                                                                                                                                                                                                           
for i=1:7; if X_(i)<0;X_(i)=0 ;    end;end;                                                                                                                                                                                                                                                                                                                                                 
if flag_nd==0; X_=X_'; end;