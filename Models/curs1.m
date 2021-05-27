function y=mat_fun(X,Q,N);
T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);
J_norm=[1000,1000];
%J
J(1)=1;
%KJ
if N==0; y=J; else y=J(N); end;
function X_=mat_mod(dt,X,Q);
global flag_nd;
load data_flag_nd;
%C
L=1;
%KC
%X
x_(1)=x(2);                  
x_(2)=x(3);                  
x_(3)=x(4);                  
x_(4)=-x(4)-x(3)-x(2)-x(1)+1;
%KX
if flag_nd==0; X_=X_'; end;
