function y=mat_opt(Q_,n);
 load data_x0;
 X_=mat_int(Q_,x0);
 J_=mat_fun(X_,Q_,n);
y=J_;
