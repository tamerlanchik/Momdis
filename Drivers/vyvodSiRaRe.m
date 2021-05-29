function vyvodSiRaRe

'вывод метода сильных равновесных решений'


load data_num_coalic;

if num_coalic==2;

load data_nash_a

% Для симметричной области
[n,k]=size(Data0.J);
kQ=size(Data0.Q);
e(1,1:21)='Симметричная область:'; 
z=2;
for i=1:n
  NN(z,1)=Data0.J(i,1);
  NN(z,2)=Data0.J(i,2);
  
  for j=1:kQ(2)
        NN(z,j+2)=Data0.Q(i,j);
  end

  nS=1;
  p=num2str(z-1);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
  
  
    for j=1:kQ(2)
      
        p=num2str(NN(z,j+2));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
        if j~=kQ(2)
            e(z,nS:nS)=','; 
            nS=nS+1;
        end

     end
  
  p=num2str(NN(z,3));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,4));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:(nS+10))=')  ->  J: (';
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=')'; 
  nS=nS+1;
  z=z+1;
end


% Для первого показателя
[n,k]=size(Data1.J);
kQ=size(Data1.Q);
z=z+1;
e(z,1:23)='Для первого показателя:'; 
z=z+1;
z1j=z-1;
for i=1:n
  NN(z,1)=Data1.J(i,1);
  NN(z,2)=Data1.J(i,2);

  for j=1:kQ(2)
        NN(z,j+2)=Data1.Q(i,j);
  end

  nS=1;
  p=num2str(z-z1j);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
    for j=1:kQ(2)
      
        p=num2str(NN(z,j+2));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
        if j~=kQ(2)
            e(z,nS:nS)=','; 
            nS=nS+1;
        end

     end

  e(z,nS:(nS+10))=')  ->  J: (';
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=')'; 
  nS=nS+1;
  z=z+1;
end

% Для второго показателя
[n,k]=size(Data2.J);
kQ=size(Data2.Q);
z=z+1;
e(z,1:23)='Для второго показателя:'; 
z=z+1;
z2j=z-1;
for i=1:n
  NN(z,1)=Data2.J(i,1);
  NN(z,2)=Data2.J(i,2);

  for j=1:kQ(2)
        NN(z,j+2)=Data2.Q(i,j);
  end
  
  nS=1;
  p=num2str(z-z2j);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
    for j=1:kQ(2)
      
        p=num2str(NN(z,j+2));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
        if j~=kQ(2)
            e(z,nS:nS)=','; 
            nS=nS+1;
        end

     end
  e(z,nS:(nS+10))=')  ->  J: (';
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=')'; 
  nS=nS+1;
  z=z+1;
end

fff=findobj(vyvodRezult, 'Tag', 'PoleVyvoda');
set(fff , 'String', e);

end;

if num_coalic==3;
load data_nash_a;

% Для симметричной области

[n,k]=size(Data0.J);
kQ=size(Data0.Q);
e(1,1:21)='Симметричная область:'; 
z=2;
for i=1:n
  NN(z,1)=Data0.J(i,1);
  NN(z,2)=Data0.J(i,2);
  NN(z,3)=Data0.J(i,3);

  for j=1:kQ(2)
        NN(z,j+3)=Data0.Q(i,j);
  end

  nS=1;
  p=num2str(z-1);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
    for j=1:kQ(2)
      
        p=num2str(NN(z,j+3));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
        if j~=kQ(2)
            e(z,nS:nS)=','; 
            nS=nS+1;
        end

     end

  e(z,nS:(nS+10))=')  ->  J: (';
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
  
  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,3));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=')'; 
  nS=nS+1;
  z=z+1;
end


% Для первого показателя
[n,k]=size(Data1.J);
kQ=size(Data1.Q);
z=z+1;
e(z,1:23)='Для первого показателя:'; 
z=z+1;
z1j=z-1;
for i=1:n
  NN(z,1)=Data1.J(i,1);
  NN(z,2)=Data1.J(i,2);
  NN(z,3)=Data1.J(i,3);

  for j=1:kQ(2)
        NN(z,j+3)=Data1.Q(i,j);
  end

  nS=1;
  p=num2str(z-z1j);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
    for j=1:kQ(2)
      
        p=num2str(NN(z,j+3));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
        if j~=kQ(2)
            e(z,nS:nS)=','; 
            nS=nS+1;
        end

     end

  e(z,nS:(nS+10))=')  ->  J: (';
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
  
  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,3));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=')'; 
  nS=nS+1;
  z=z+1;
end

% Для второго показателя
[n,k]=size(Data2.J);
kQ=size(Data2.Q);
z=z+1;
e(z,1:23)='Для второго показателя:'; 
z=z+1;
z2j=z-1;
for i=1:n
  NN(z,1)=Data2.J(i,1);
  NN(z,2)=Data2.J(i,2);
  NN(z,3)=Data2.J(i,3);

  for j=1:kQ(2)
        NN(z,j+3)=Data2.Q(i,j);
  end

  nS=1;
  p=num2str(z-z2j);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
    for j=1:kQ(2)
      
        p=num2str(NN(z,j+3));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
        if j~=kQ(2)
            e(z,nS:nS)=','; 
            nS=nS+1;
        end

     end

  e(z,nS:(nS+10))=')  ->  J: (';
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
  
  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,3));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=')'; 
  nS=nS+1;
  z=z+1;
end

% Для третьего показателя
[n,k]=size(Data3.J);
kQ=size(Data3.Q);
z=z+1;
e(z,1:24)='Для третьего показателя:'; 
z=z+1;
z3j=z-1;
for i=1:n
  NN(z,1)=Data3.J(i,1);
  NN(z,2)=Data3.J(i,2);
  NN(z,3)=Data3.J(i,3);

  for j=1:kQ(2)
        NN(z,j+3)=Data3.Q(i,j);
  end

  nS=1;
  p=num2str(z-z3j);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
    for j=1:kQ(2)
      
        p=num2str(NN(z,j+3));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
        if j~=kQ(2)
            e(z,nS:nS)=','; 
            nS=nS+1;
        end

     end

  e(z,nS:(nS+10))=')  ->  J: (';
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
  
  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,3));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=')'; 
  nS=nS+1;
  z=z+1;
end

fff=findobj(vyvodRezult, 'Tag', 'PoleVyvoda');
set(fff , 'String', e);

end;
