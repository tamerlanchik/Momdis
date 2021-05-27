function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
omegazproiz=4e-2;
Vx=40;           
B=1.8;           
A=5.2;           
A1=A/2;          
A2=A/2;          
R=0.5;           
M=14120;         
I=97730;         
I1=18.9;         
I2=37.9;         
K0=10;           
Kx=700*10^3;     
Ky=375*10^3;     
aa=1.2;          
N11=M*9.8/4;     
N12=M*9.8/4;     
N21=M*9.8/4;     
N22=M*9.8/4;     
K11=-1.1328;     
K12=-0.2795;     
K21=-1.1328;     
K22=-0.2795;     
omZ0=0.2;        
Vy=0.3;          
Vy1=omZ0*A/2;    
P11x0=0;         
P12x0=0;         
P21x0=0;         
P22x0=0;         
dT=0.05;         
tfinal=0.15;     
tfinal1=1;       
J1a=0;           
J2a=0;           
J3a=0;           
J2b=0;           
J3b=0;           
fi=0;            
P11y0=0;         
P12y0=0;         
P21y0=0;         
P22y0=0;         
Jmax=[0.23125    
39.573           
0.17531          
-0.040289        
1.431e+009       
2.1937];         
Jmin=[0.040289   
39.465           
0.12662          
-0.23125         
5.8381e+007      
0.323];          
%J
global BufJJJ;                                                                                         
J(1)=0.33*BufJJJ(1)+0.33*BufJJJ(2)+0.33*BufJJJ(3);                                                     
J(2)=0.33*BufJJJ(4)+0.33*BufJJJ(5)+0.33*BufJJJ(6);                                                     
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
omegazproiz=4e-2;
Vx=40;           
B=1.8;           
A=5.2;           
A1=A/2;          
A2=A/2;          
R=0.5;           
M=14120;         
I=97730;         
I1=18.9;         
I2=37.9;         
K0=10;           
Kx=700*10^3;     
Ky=375*10^3;     
aa=1.2;          
N11=M*9.8/4;     
N12=M*9.8/4;     
N21=M*9.8/4;     
N22=M*9.8/4;     
K11=-1.1328;     
K12=-0.2795;     
K21=-1.1328;     
K22=-0.2795;     
omZ0=0.2;        
Vy=0.3;          
Vy1=omZ0*A/2;    
P11x0=0;         
P12x0=0;         
P21x0=0;         
P22x0=0;         
dT=0.05;         
tfinal=0.15;     
tfinal1=1;       
J1a=0;           
J2a=0;           
J3a=0;           
J2b=0;           
J3b=0;           
fi=0;            
P11y0=0;         
P12y0=0;         
P21y0=0;         
P22y0=0;         
Jmax=[0.23125    
39.573           
0.17531          
-0.040289        
1.431e+009       
2.1937];         
Jmin=[0.040289   
39.465           
0.12662          
-0.23125         
5.8381e+007      
0.323];          
%KC
%X
global BufJJJ;                                                                                                                                   
for i=1:4 if Q(i)>0.45  vijy(i)=(sqrt(1.2^2-Q(i)^2));  else  vijy(i)=(sqrt(0.45^2-Q(i)^2)); end; end;                                            
T11y4=(vijy(1))*N11*K0/(Vx*Ky);  T12y4=(vijy(2))*N12*K0/(Vx*Ky);  T21y4=(vijy(3))*N21*K0/(Vx*Ky);  T22y4=(vijy(4))*N22*K0/(Vx*Ky);               
K11y=(vijy(1))*N11*K0/Vx;  K12y=(vijy(2))*N12*K0/Vx;  K21y=(vijy(3))*N21*K0/Vx;  K22y=(vijy(4))*N22*K0/Vx;                                       
P11y0=-vijy(1)*N11*K0*(Vy)/Vx-vijy(1)*N11*K0*Vy*omZ0*A1/Vx;                                                                                      
P12y0=-vijy(2)*N12*K0*(Vy)/Vx-vijy(2)*N12*K0*Vy*omZ0*A1/Vx;                                                                                      
P21y0=-vijy(3)*N21*K0*(Vy)/Vx+vijy(3)*N21*K0*Vy*omZ0*A2/Vx;                                                                                      
P22y0=-vijy(4)*N22*K0*(Vy)/Vx+vijy(4)*N22*K0*Vy*omZ0*A2/Vx;                                                                                      
T11x4=Q(1)*N11*K0/(Vx*Kx);  T12x4=Q(2)*N12*K0/(Vx*Kx);  T21x4=Q(3)*N21*K0/(Vx*Kx); T22x4=Q(4)*N22*K0/(Vx*Kx);                                    
K11x=Q(1)*N11*K0/Vx; K12x=Q(2)*N12*K0/Vx; K21x=Q(3)*N21*K0/Vx;  K22x=Q(4)*N22*K0/Vx;                                                             
L11=K11*Q(5); L12=K12*Q(6);  L21=K21*Q(7);  L22=K22*Q(8);  U11x=Q(1)*N11*K0;  U12x=Q(2)*N12*K0;  U21x=Q(3)*N21*K0;  U22x=Q(4)*N22*K0;            
t=0; i=1;                                                                                                                                        
X(11)=P11y0; X(12)=P12y0; X(13)=P21y0; X(14)=P22y0;                                                                                              
while t<tfinal,                                                                                                                                  
X_(1)=dT*Vx*X(2)+dT*1/M*X(11)+dT*1/M*X(12)+dT*1/M*X(13)+dT*1/M*X(14)+X(1);                                                                       
X_(2)=(-dT)*1*B/I*X(7)+dT*1*B/I*X(8)+(-dT)*1*B/I*X(9)+dT*1*B/I*X(10)+dT*1*A1/I*X(11)+dT*1*A1/I*X(12)+(-dT)*1*A2/I*X(13)+(-dT)*1*A2/I*X(14)+X(2); 
X_(3)=(-dT)*1*R/I1*X(7)+dT*1/I1*L11+X(3);                                                                                                        
X_(4)=(-dT)*1*R/I1*X(8)+dT*1/I1*L12+X(4);                                                                                                        
X_(5)=(-dT)*1*R/I2*X(9)+dT*1/I2*L21+X(5) ;                                                                                                       
X_(6)=(-dT)*1*R/I2*X(10)+dT*1/I2*L22+X(6);                                                                                                       
X_(7)=dT*K11x*R/T11x4*X(3)+(-dT)*1/T11x4*X(7)+dT*1/T11x4*(-1)*U11x+X(7);                                                                         
X_(8)=dT*K12x*R/T12x4*X(4)+(-dT)*1/T12x4*X(8)+dT*1/T12x4*(-1)*U12x+X(8);                                                                         
X_(9)=dT*K21x*R/T21x4*X(5)+(-dT)*1/T21x4*X(9)+dT*1/T21x4*(-1)*U21x+X(9);                                                                         
X_(10)=dT*K22x*R/T22x4*X(6)+(-dT)*1/T22x4*X(10)+dT*1/T22x4*(-1)*U22x+X(10);                                                                      
X_(11)=(-dT)*K11y/T11y4*X(1)+(-dT)*K11y*A1/T11y4*X(2)+(-dT)*1/T11y4*X(11)+X(11);                                                                 
X_(12)=(-dT)*K12y/T12y4*X(1)+(-dT)*K12y*A1/T12y4*X(2)+(-dT)*1/T12y4*X(12)+X(12);                                                                 
X_(13)=(-dT)*K21y/T21y4*X(1)+dT*K21y*A2/T21y4*X(2)+(-dT)*1/T21y4*X(13)+X(13);                                                                    
X_(14)=(-dT)*K22y/T22y4*X(1)+dT*K22y*A2/T22y4*X(2)+(-dT)*1/T22y4*X(14)+X(14);                                                                    
t=t+dT; omegazproiz1=(X_(2)-X(2))/dT;                                                                                                            
J1a=J1a+((X_(2)-X(2))/dT-omegazproiz)^2*dT;                                                                                                      
J3a=J3a+X_(1)^2*dT;                                                                                                                              
J2b=J2b+(X_(11)^2+X_(12)^2+X_(13)^2+X_(14)^2)*dT;                                                                                                
nm1(i)=(X_(7)+X_(8)+X_(9)+X_(10));   nm2(i)=X_(1);  nm3(i)=X_(2);  i=i+1; fi=fi+X_(2)*dT; X=X_; end;                                             
fi=fi+X_(2)*(tfinal1-tfinal); if fi*180/3.14<7, kF=7000/Vx^2; else if fi*180/3.14<14, kF=8500/Vx^2; else kF=10000/Vx^2; end; end;                
t=0; i=0; while t<tfinal1, t=t+dT; if t<tfinal, i=i+1; n1=nm1(i); n2=nm2(i)*nm3(i); else n1=nm1(i); n2=nm2(i)*nm3(i); end;                       
Vx=Vx+((n1-kF*Vx^2)/M+n2)*dT; end;                                                                                                               
J2a=Vx;                                                                                                                                          
J3b=0.2*(Q(2)^2+Q(4)^2)+0.4*(Q(1)^2+Q(3)^2)+0.4*(vijy(1)^2+vijy(2)^2+vijy(3)^2+vijy(4)^2);                                                       
BufJJJ=[J1a; J2a; J3a; -J1a; J2b; J3b];                                                                                                          
BufJJJ=(BufJJJ-Jmin)./(Jmax-Jmin);                                                                                                               
%KX
if flag_nd==0; X_=X_'; end;
function [u_,v_]=mat_ogr(Q,X,n);
%U
u_=[];
v_=[];
%KU
function KonFail
%Q
q_max=[1 , 1 , 1 , 1 , 0.15 , 0.15 , 0.15 , 0.15];
%KQ
%x0
x0=[0.3 , 0.2 , 80 , 80 , 80 , 80 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0];
%Kx0
%Q1
q_min=[0.05 , 0.05 , 0.05 , 0.05 , 0 , 0 , 0 , 0];
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
r_q=[4,4];
%Krq
%rs
r_set=[3,3,3,3,3,3,3,3];
%Krs
